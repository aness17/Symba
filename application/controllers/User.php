<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/userguide3/general/urls.html
     */

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Departement_model');
        $this->load->model('Station_model');
        $this->load->model('Division_model');
        $this->load->model('DetailBudget_model');
        $this->load->model('Actual_model');
        $this->load->model('Costcen_model');
        $this->load->model('Lob_model');
        $this->load->model('Items_model');
        $this->load->model('Roles_model');
        $this->load->model('Budget_model');
        $this->load->model('Account_model');
        $this->load->model('Travelda_model');
        $this->load->model('Log_model');
        $this->load->model('Periode_model');
        $this->cekauth();
        $_SESSION['login_time'] = time();
        if ($this->session->userdata('id') === null) {
            redirect('auth');
        }
    }
    public function cekauth()
    {
        $ci = get_instance();
        $getloc = json_decode(file_get_contents("http://ipinfo.io/"));
        $loc = $getloc->city;
        $coordinates = explode(",", $getloc->loc); // -> '32,-72' becomes'32','-72'
        $long = $coordinates[1]; // latitude
        $lat = $coordinates[0]; // longitude
        $id = $ci->session->userdata('id');
        $ip = $this->input->ip_address();
        if ($ci->session->userdata('id_role') == '3') {

            if (time() - $_SESSION['login_time'] >= 1800) {
                $data = [
                    'id_user' => $id,
                    'remarks' => 'Session Timeout',
                    'ip_add' => $ip,
                    'city' => $loc,
                    'longitude' => $long,
                    'latitude' => $lat
                ];
                // var_dump($data);die;
                $this->Log_model->create($data);
                session_destroy();
                redirect('auth/');
            }
        }
        if ($ci->session->userdata('id_role') != '3') {
            if ($ci->session->userdata('id_role') > 0) {
                $data = [
                    'id_user' => $id,
                    'remarks' => 'User not authorized',
                    'ip_add' => $ip,
                    'city' => $loc,
                    'longitude' => $long,
                    'latitude' => $lat
                ];
                $this->Log_model->create($data);

                $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not authorized'));
                $this->session->unset_userdata('id_user');
                $this->session->unset_userdata('id_role');
                $this->session->unset_userdata('name_user');
                redirect('auth/');
            } else {
                redirect('auth/');
            }
        }
    }
    public function index()
    {
        $ci = get_instance();
        $this->form_validation->set_rules('tahun', 'tahun', 'required');

        $thn = $this->input->post('tahun');
        $thn = '';

        if ($this->form_validation->run() == true) {
            $thn = $this->input->post('tahun');
        } else {
            $thn = date('Y');
        }
        $id = $ci->session->userdata('id');
        $user = $this->User_model->selectUser($id);
        $bgs = $this->DetailBudget_model->selectbyiduser($id, $thn);

        $sisabudgetcapex = $this->DetailBudget_model->sisabudgetuser($id, $thn, 'CAPEX');

        $sisabudgetopex = $this->DetailBudget_model->sisabudgetuser($id, $thn, 'OPEX');

        $actual = $this->Actual_model->useractById($id, $thn);
        $debitbudget = $this->DetailBudget_model->sumdebit($id, $thn)[0]->amount_debit;
        $debitactual = $this->Actual_model->sumdebit($id, $thn)[0]->amount_debit;
        $creditbudget = $this->DetailBudget_model->sumcredit($id, $thn)[0]->amount_credit;
        $creditactual = $this->Actual_model->sumcredit($id, $thn)[0]->amount_credit;
        $sisa = ($debitbudget - $debitactual) + ($creditbudget - $creditactual);
        $detailactcapex = $this->Actual_model->getactdet($id, $thn, 'CAPEX');
        $detailactopex = $this->Actual_model->getactdet($id, $thn, 'OPEX');
        $budgetcapex = $this->Budget_model->selectbudgetuser($id, $thn, 'CAPEX');
        $budgetopex = $this->Budget_model->selectbudgetuser($id, $thn, 'OPEX');
        $diagram = $this->Actual_model->Actualperbulan($id, $thn);
        $tahun = $this->DetailBudget_model->tahun();
        $periode = $this->Periode_model->getPeriode();

        // $pengajuan = $this->DetailBudget_model->sumpengajuan($id);
        $data = [
            'user' => $user,
            // 'pengajuan' => $pengajuan,
            'debit' => $debitbudget - $debitactual,
            'debitactual' => $debitactual,
            'detailactcapex' => $detailactcapex,
            'detailactopex' => $detailactopex,
            'totalbudget' => $debitbudget,
            'diagram' => $diagram,
            'sisa' => $sisa,
            'sisabudgetcapex' => $sisabudgetcapex,
            'sisabudgetopex' => $sisabudgetopex,
            'actual' => $actual,
            'bgg' => $bgs,
            'budgetcapex' => $budgetcapex,
            'budgetopex' => $budgetopex,
            'tahun' => $tahun,
            'periode' => $periode,
            'heading' => 'dashboard',
            'thn' => $thn
        ];
        // var_dump($diagram);
        // die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_user', $data);
        $this->load->view('user/dashboard', $data);
        $this->load->view('templates/footer');
    }
    public function json_detail_actual()
    {
        $id = (int)$_POST['id_budget'];
        $iduser = (int)$_POST['id_user'];
        $thn = (int)$_POST['thn'];

        $data = $this->Actual_model->getactdetail($id, $iduser, $thn);
        $credit = $this->Actual_model->sumcredittuser($id, $iduser, $thn)[0]->amount_credit;
        $budget = $this->Actual_model->sumdebittuser($id, $iduser, $thn)[0]->amount_debit;

        $division = $this->User_model->selectdpt($iduser)[0]->division;
        $sisa = $budget - $credit;
        $totalActual = "<b>Total Transaction : " . number_format($sisa, 0, ",", ".") . " IDR </b>";
        $content =  '';
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['id_acc'] . '.' . $d['subacc'] . '.' . $d['product'] . '.' . $d['code_costcen'] . '.' . $d['code_station'] . '.' . $d['company'] . '</td>';
                $isi_table .= '<td>' . str_replace('#', ' ', $d['desc_source']) . '</td>';
                $isi_table .= '<td>' . $d['description'] . '</td>';
                $isi_table .= '<td>' . $d['source'] . '</td>';
                // $isi_table .= '<td>' . $d['currency'] . '</td>';
                $isi_table .= '<td>' . number_format($d['amount_debit'], 0, ",", ".") . ' ' . $d['currency'] . '</td>';
                $isi_table .= '<td>' . number_format($d['amount_credit'], 0, ",", ".") . ' ' . $d['currency'] . '</td>';
                $isi_table .= '<td>' . date('M d, Y', strtotime($d['actual_date'])) . '</td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .=  $isi_table;
        $dt = array("isi" => $content, "total" => $totalActual, "division" => $division);
        $output = json_encode($dt);
        // $isi = json_encode($data);
        echo $output;
    }
    public function dtl_budget()
    {
        $iduser = (int)$_POST['id_user'];
        $id = (int)$_POST['id_bdgt'];
        $thn = (int)$_POST['thn'];

        $data = $this->DetailBudget_model->sisabudgetusermodal($id, $iduser, $thn);

        $division = $this->User_model->selectdpt($iduser)[0]->division;

        $content =  '';
        // var_dump($data);
        // die;
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['id_acc'] . '.' . $d['subacc'] . '.' . $d['product'] . '.' . $d['code_costcen'] . '.' . $d['code_station'] . '.' . $d['company'] . '</td>';
                $isi_table .= '<td>' . $d['description'] . '</td>';
                $isi_table .= '<td>' . str_replace('#', ' ', $d['desc_source']) . '</td>';
                // $isi_table .= '<td>' . $d['source'] . '</td>';
                $isi_table .= '<td>' .  number_format($d['amount_debit'], 0, ",", ".") . ' ' . $d['currency'] . '</td>';
                // $isi_table .= '<td>' . date('M d, Y', strtotime($d['create_date'])) . '</td>';
                // $isi_table .= '<td>' . $d['status'] . '</td>';
                // $isi_table .= '<td><a href="#myModal2" class="btn btn-info" onclick="dtl_actual('.$id.','.$iduser.')" data-toggle="modal">'. $d['status'] .'</a></td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .= $isi_table;
        $dt = array("isi" => $content, "division" => $division);

        $isi = json_encode($dt);
        // $isi = json_encode($data);
        echo $isi;
        // var_dump($isi);
        // die;
    }
    public function deletebudget($id, $type)
    {
        $ci = get_instance();
        $iduser = $ci->session->userdata('id');
        if ($type == 'travelda') {
            $bg = $this->DetailBudget_model->selecttda($id)[0]->request_num;
            $req = $this->DetailBudget_model->selectbyreq($bg);
            if ($id) {
                $p = $this->Budget_model->selecthd($bg);
                $no = 0;
                foreach ($p as $a) :
                    if ($p[$no]['total_budget'] <= $req[$no]['amount_debit']) {
                        $data = [
                            'id_bdgt' => $req[$no]['id_bdgt'],
                            'total_budget' => intval($p[$no]["total_budget"]) - $req[$no]["amount_debit"]
                        ];
                    } else {
                        $data = [
                            'id_bdgt' => $req[$no]['id_bdgt'],
                            'total_budget' => (intval($p[$no]["total_budget"]) - $req[$no]['amount_debit'])
                        ];
                    }
                    $this->Budget_model->update($data);
                    $no++;
                    if ($this->DetailBudget_model->deletebyreq($bg) > 0) {
                        echo "<script>alert('Success to Delete Data');</script>";
                        $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
                    } else {
                        echo "<script>alert('Failed to Delete Data');</script>";
                        $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
                    }
                endforeach;
                echo "<script>alert('Success to Delete Data');</script>";
                redirect('user/menutravelda/' . $iduser);
            } else {
                echo "<script>alert('Failed to Delete Data');</script>";
                $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
            }
            redirect('user/menutraveld/' . $iduser);
        } elseif ($type == 'capexopex') {
            $budget = $this->DetailBudget_model->getbgById($id);
            $p = $this->Budget_model->selectheader($budget['id_bdgt']);

            if ($p['total_budget'] <= $budget['amount_debit']) {
                $data = [
                    'id_bdgt' => $budget['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) - $budget["amount_debit"]
                ];
            } else {
                $data = [
                    'id_bdgt' => $budget['id_bdgt'],
                    'total_budget' => (intval($p["total_budget"]) - $budget['amount_debit'])
                ];
            }
            // var_dump($data);
            // die;
            $this->Budget_model->update($data);
            if ($this->DetailBudget_model->delete($id) > 0) {
                redirect('user/bugdetcapexopex/' . $iduser);
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                // echo mysqli_error($con);
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            echo "<script>location.href='" . base_url('user/chooseadd') . "';alert('False');</script>";
        }
    }
    public function addbudget()
    {
        $ci = get_instance();
        $id = $ci->session->userdata('id');

        $this->form_validation->set_rules('acc', 'Account', '');
        // $this->form_validation->set_rules('user', 'Division', '');
        $this->form_validation->set_rules('desc', 'Description', 'required');
        $this->form_validation->set_rules('program', 'Programme', 'required');
        $this->form_validation->set_rules('qty', 'Quantity', 'required');
        $this->form_validation->set_rules('unit', 'Unit', 'required');
        // $this->form_validation->set_rules('dns', 'Desc Source', '');
        $this->form_validation->set_rules('dsm', 'Remarks', 'required');
        // $this->form_validation->set_rules('cur', 'Currency', 'required');
        $this->form_validation->set_rules('debit', 'Debit', 'required');
        $this->form_validation->set_rules('cat_bdgt', 'Budget Category', 'required');
        $this->form_validation->set_rules('date', 'Date', 'required');

        $periode = $this->Periode_model->getPeriode();
        $user = $this->User_model->selectUser($id);
        $usr = $this->User_model->getuser($id);
        $account = $this->Account_model->selectAll();
        $data = [
            'user' => $user,
            'account' => $account,
            'periode' => $periode,
            'usr' => $usr,
            'id' => $id,
            'heading' => 'user'
        ];
        // var_dump($user);die;
        $account = $this->input->post('acc');
        $periode = date("Y", strtotime($this->input->post('date')));

        if ($this->form_validation->run() == true) {
            $find = $this->Budget_model->findheader($id, $account, $periode);
            var_dump(date("Y-m-d", strtotime($this->input->post('date'))));
            // die;
            // var_dump($periode);die;
            // var_dump($hotel);die;
            // var_dump($find[0]['id_bdgt']);die;
            if (count($find) > 0) {
                $db = [
                    'id_account' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => $this->input->post('desc'),
                    'program' => $this->input->post('program'),
                    // 'category'=> $this->input->post('category'),
                    // 'doc_ref'=> $this->input->post('docref'),
                    // 'doc_number'=> $this->input->post('dns'),
                    'desc_source' => $this->input->post('dsm') . ' ' . $this->input->post('qty') . ' ' . $this->input->post('unit'),
                    'currency' => 'IDR',
                    'amount_debit' => $this->input->post('debit'),
                    'amount_credit' => 0,
                    'status' => 'no',
                    'category_budget' => $this->input->post('cat_bdgt'),
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_date' => date("Y-m-d", strtotime($this->input->post('date'))),
                    'budget_year' => $periode
                ];
                // var_dump($db);
                // die;
                $budget = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($find[0]['id_bdgt']);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>location.href='" . base_url('user/bugdetcapexopex/' . $id) . "';alert('Success to Update Data');</script>";
            } else {
                $db = [
                    'id_acc' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];

                $idbdgt = $this->Budget_model->create($db);
                // $idbdgt = $this->Budget_model->getLastId()["id_bdgt"];

                $db = [
                    'id_account' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => $this->input->post('desc'),
                    'program' => $this->input->post('program'),
                    // 'category'=> $this->input->post('category'),
                    // 'doc_ref'=> $this->input->post('docref'),
                    // 'doc_number'=> $this->input->post('dns'),
                    'desc_source' => $this->input->post('dsm') . ' ' . $this->input->post('qty') . ' ' . $this->input->post('unit'),
                    'currency' => 'IDR',
                    'amount_debit' => $this->input->post('debit'),
                    'amount_credit' => 0,
                    'status' => 'no',
                    'category_budget' => $this->input->post('cat_bdgt'),
                    'id_bdgt' => $idbdgt,
                    'budget_date' => date("Y-m-d", strtotime($this->input->post('date'))),
                    'budget_year' => $periode
                ];
                // var_dump($db);
                // die;
                // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
                if ($this->DetailBudget_model->create($db) > 0) {
                    // $id = $id;
                    $p = $this->Budget_model->selectheader($idbdgt);
                    // var_dump($id);
                    $data = [
                        'id_bdgt' => $idbdgt,
                        'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                    ];
                    // var_dump($data);die;
                    $this->Budget_model->update($data);
                    $this->session->set_flashdata('message_login', $this->flasher('success', 'Success to create Budget'));
                    echo "<script>alert('Success to Update Data');</script>";
                    redirect('user/bugdetcapexopex/' . $id);
                } else {
                    echo "Failed to create Budget";
                    die;
                    $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Budget'));
                }

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
            }
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user', $data);
            $this->load->view('user/budget/addbudget', $data);
            $this->load->view('templates/footer');
        }
    }

    // public function dataactual()
    // {
    //     $ci = get_instance();

    //     $id = $ci->session->userdata('id');
    //     $user = $this->User_model->selectUser($id);
    //     // $sisa = $bg['amount_debit']-$actual['amount_debit'];
    //     $bg = $this->DetailBudget_model->selectAll();

    //     $actual = $this->Actual_model->useractById($id);
    //     $data = [
    //         'actual' => $actual,
    //         'user' => $user,
    //         'bg' => $bg
    //         // 'sisa' => $sisa

    //     ];
    //     // var_dump($bg);die;
    //     $this->load->view('templates/header');
    //     $this->load->view('templates/sidebar_user', $data);
    //     $this->load->view('user/data_actual', $data);
    //     $this->load->view('templates/footer');
    // }
    public function chooseadd()
    {
        $ci = get_instance();

        $id = $ci->session->userdata('id');
        $user = $this->User_model->selectUser($id);
        $periode = $this->Periode_model->getPeriode();

        // $sisa = $bg['amount_debit']-$actual['amount_debit'];
        // $bg = $this->DetailBudget_model->selectAll();
        // $actual = $this->Actual_model->useractById($id);
        $data = [
            'periode' => $periode,
            'user' => $user,
            'id' => $id,
            'heading' => 'user'
            // 'sisa' => $sisa
        ];
        // var_dump($bg);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_user', $data);
        $this->load->view('user/chooseadd', $data);
        $this->load->view('templates/footer');
    }
    public function bugdetcapexopex($id)
    {
        $ci = get_instance();

        $iduser = $ci->session->userdata('id');
        $user = $this->User_model->selectUser($id);
        $periode = $this->Periode_model->getPeriode();

        // $sisa = $bg['amount_debit']-$actual['amount_debit'];
        $bg = $this->DetailBudget_model->selectwithoutTravelda($id);

        // $actual = $this->Actual_model->getactdetail($id, $iduser);
        $data = [
            'periode' => $periode,
            'user' => $user,
            'bg' => $bg,
            'heading' => 'user'
            // 'sisa' => $sisa

        ];
        // var_dump($bg);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_user', $data);
        $this->load->view('user/databudget', $data);
        $this->load->view('templates/footer');
    }
    public function menutravelda($id)
    {
        $ci = get_instance();
        $user = $this->User_model->selectUser($id);
        $periode = $this->Periode_model->getPeriode();

        // $sisa = $bg['amount_debit']-$actual['amount_debit'];
        $bg = $this->DetailBudget_model->selectTravelda($id);
        // $year = date('Y') + 1;
        // var_dump($bg);
        // die;
        // $actual = $this->Actual_model->getactdetail($id, $iduser);
        $data = [
            'periode' => $periode,
            'user' => $user,
            'bg' => $bg,
            'heading' => 'user'

        ];
        // var_dump($bg);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_user', $data);
        $this->load->view('user/data_travelda', $data);
        $this->load->view('templates/footer');
    }


    public function flasher($class, $message)
    {
        return
            '<div class="alert alert-' . $class . ' alert-dismissible fade show" role="alert">
        ' . $message . '
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>';
    }

    public function travelda()
    {
        $ci = get_instance();
        $id = $ci->session->userdata('id');
        $usr = $this->User_model->getUser($id);
        $user = $this->User_model->selectUser($id);
        $tahun = $this->Travelda_model->tahun();
        $periode = $this->Periode_model->getPeriode();


        $data = [
            'usr' => $usr,
            'user' => $user,
            'tahun' => $tahun,
            'periode' => $periode,
            'heading' => 'user'
        ];

        // var_dump($data);die;
        $this->form_validation->set_rules('grade', 'Grade', 'required');
        $this->form_validation->set_rules('hari', 'Days', 'required');
        $this->form_validation->set_rules('tujuan', 'Destination', 'required');
        $this->form_validation->set_rules('program', 'Program', 'required');
        $this->form_validation->set_rules('qty', 'Qty', 'required');
        $this->form_validation->set_rules('periode', 'Periode', 'required');
        $last = $this->DetailBudget_model->getLastId()["request_num"];
        if ($last == '0') {
            $last = '000';
        } else {
            $last = explode("A", $this->DetailBudget_model->getLastId()["request_num"])[1];
        }
        // var_dump($last);
        // die;

        // $periode = date("Y", strtotime($this->input->post('date')));
        if ($this->form_validation->run() == true) {
            $periode = $this->input->post('periode');
            $db = [
                'grade' => $this->input->post('grade'),
                'hari' => $this->input->post('hari'),
                'tujuan' => $this->input->post('tujuan'),
                'program' => $this->input->post('program'),
                'qty' => $this->input->post('qty'),
                'periode_year' => $periode
            ];

            $account1 = '104';
            $account2 = '106';
            $account3 = '107';
            $grade = $this->Travelda_model->getidbygrade($db['grade'], $periode);

            $ted = $db['hari'] * $db['qty'] * $grade['hotel'];
            $daa = $db['hari'] * $db['qty'] * $grade['daily_allowance'];
            $ticket = $db['qty'] * 2 * $grade['ticket'];
            // var_dump($grade);
            // var_dump($travel_da[implode($grade)-1]['hotel']);die;
            // var_dump(count($find));die;
            // die;

            $find = $this->Budget_model->findheader($id, $account1, $periode);
            if (count($find) > 0) {
                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Daily Allowance',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'DA#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $daa,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($find[0]['id_bdgt']);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>alert('Success to Update Data Daily Allowance');</script>";
            } else {
                $da = [
                    'id_acc' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Daily Allowance',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'DA#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $daa,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $da,
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($da);
                // var_dump($p);die;
                $data = [
                    'id_bdgt' => $da,
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($data['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>alert('Success to Add Data Daily Allowance');</script>";
            }

            $find = $this->Budget_model->findheader($id, $account2, $periode);

            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if (count($find) > 0) {
                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Travel Expense Domestic',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'Akomodasi#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ted,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($find[0]['id_bdgt']);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>alert('Success to Update Data Travel Expense Domestic');</script>";
            } else {
                $da = [
                    'id_acc' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Travel Expense Domestic',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'Akomodasi#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ted,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $da,
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($da);
                // var_dump($p);die;
                $data = [
                    'id_bdgt' => $da,
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($data['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>alert('Success to Add Travel Expense Domestic');</script>";
            }

            $find = $this->Budget_model->findheader($id, $account3, $periode);

            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if (count($find) > 0) {
                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Ticket',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'Ticket#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ticket,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($find[0]['id_bdgt']);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>location.href='" . base_url('user/menutravelda/' . $id) . "';alert('Success to Update Data Ticket');</script>";
            } else {
                $da = [
                    'id_acc' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description' => 'Ticket',
                    'program' => $this->input->post('program'),
                    'desc_source' => 'Ticket#' . $this->input->post('program') . '#' . $this->input->post('tujuan') . '#' . $this->input->post('grade') . '#' . $this->input->post('hari') . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ticket,
                    'request_num' =>  'TDA' . str_pad(intval($last) + 1, 3, '0', STR_PAD_LEFT),
                    'status' => 'no',
                    'category_budget' => 'OPEX',
                    'id_bdgt' => $da,
                    'budget_date' => $periode . '-01-01',
                    'budget_year' => $periode
                ];
                $da2 = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($da);
                // var_dump($p);die;
                $data = [
                    'id_bdgt' => $da,
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($data['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>location.href='" . base_url('user/menutravelda/' . $id) . "';alert('Success to Add Ticket');</script>";
            }
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user', $data);
            $this->load->view('user/add_TravelDA', $data);
            $this->load->view('templates/footer');
        }
        // }
    }
}
