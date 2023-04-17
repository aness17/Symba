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
        $this->cekauth();
    }
    public function cekauth(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not autorized'));
            $this->session->unset_userdata('id_user');
            $this->session->unset_userdata('id_role');
            $this->session->unset_userdata('name_user');
            redirect('auth/');
        }
    }
    public function index()
    {
                $ci = get_instance();

            $id = $ci->session->userdata('id');
            $user = $this->User_model->selectUser($id);
            $bg = $this->DetailBudget_model->selectbyid($id);
            $sisabudget = $this->DetailBudget_model->sisabudgetuser($id);
            $actual = $this->Actual_model->useractById($id);
            $debitbudget = $this->DetailBudget_model->sumdebit($id)[0]->amount_debit;
            $debitactual = $this->Actual_model->sumdebit($id)[0]->amount_debit;
            $creditbudget = $this->DetailBudget_model->sumcredit($id)[0]->amount_credit;
            $creditactual = $this->Actual_model->sumcredit($id)[0]->amount_credit;
            $sisa = ($debitbudget - $debitactual) + ($creditbudget - $creditactual);
            // $detailactual = $this->Actual_model->getactdetail($id,$iduser);
            $budget = $this->Budget_model->selectbudgetuser($id);
            
            // $pengajuan = $this->DetailBudget_model->sumpengajuan($id);
            $data = [
                'user' => $user,
                // 'pengajuan' => $pengajuan,
                'debit' => $debitbudget - $debitactual,
                'debitactual' => $debitactual,
                'totalbudget' => $debitbudget,
                'sisa' => $sisa,
                'bgs' => $sisabudget,
                'actual' => $actual,
                'bgg' => $bg,
                'budget' => $budget
            ];
            // var_dump($data);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user',$data);
            $this->load->view('user/dashboard', $data);
            $this->load->view('templates/footer');
        
    }
    public function dtl_budget()
    {
        $iduser = (int)$_POST['id_user'];
        $id = (int)$_POST['id_bdgt'];
        $data = $this->DetailBudget_model->sisabudgetusermodal($id,$iduser);
        $content =  '';
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['description'] . '</td>';
                $isi_table .= '<td>' . $d['desc_source'] . '</td>';
                $isi_table .= '<td>' . $d['source'] . '</td>';
                $isi_table .= '<td>'.  number_format($d['amount_debit'], 0, ",", ".") . ' '.$d['currency'] .'</td>';
                // $isi_table .= '<td>' . date('M d, Y', strtotime($d['create_date'])) . '</td>';
                // $isi_table .= '<td>' . $d['status'] . '</td>';
                // $isi_table .= '<td><a href="#myModal2" class="btn btn-info" onclick="dtl_actual('.$id.','.$iduser.')" data-toggle="modal">'. $d['status'] .'</a></td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .= $isi_table;
        $isi = json_encode($content);
        // $isi = json_encode($data);
        echo $isi;
    }
    public function databudget()
    {
                $ci = get_instance();

            $id = $ci->session->userdata('id');
            $user = $this->User_model->selectUser($id);
            // $sisa = $bg['amount_debit']-$actual['amount_debit'];
            $bg = $this->DetailBudget_model->selectbyid($id);
            $data = [
                'user' => $user,
                'bg' => $bg
                // 'sisa' => $sisa

            ];
            // var_dump($bg);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user',$data);
            $this->load->view('user/databudget', $data);
            $this->load->view('templates/footer');
        
    }
    public function addbudget(){
                $ci = get_instance();

                       $id = $ci->session->userdata('id');

                $this->form_validation->set_rules('acc', 'Account', '');
                // $this->form_validation->set_rules('user', 'Division', '');
                $this->form_validation->set_rules('desc', 'Description', 'required');
                $this->form_validation->set_rules('source', 'Source', '');
                $this->form_validation->set_rules('category', 'Category', '');
                $this->form_validation->set_rules('docref', 'References', '');
                $this->form_validation->set_rules('dns', 'Desc Source', '');
                $this->form_validation->set_rules('dsm', 'Desc Module', 'required');
                $this->form_validation->set_rules('cur', 'Currency', 'required');
                $this->form_validation->set_rules('debit', 'Departement', 'required');
                $this->form_validation->set_rules('credit', 'Departement', '');
                $this->form_validation->set_rules('date', 'Date', 'required');

                $user = $this->User_model->selectUser($id);
                $usr = $this->User_model->getuser($id);
                $account = $this->Account_model->selectAll();
                // $id = $id;
                $data = [
                    'user' => $user,
                    'account' => $account,
                    'usr' => $usr,
                    'id' => $id
                ];
                // var_dump($user);die;


                if ($this->form_validation->run() == true) {
                    $db = [
                        'id_acc' => $this->input->post('acc'),
                        'subacc' => '000',
                        'product' => '00000',
                        'id_user' => $id,
                        'total_budget' => 0
                    ];
                    
                    $idbdgt = $this->Budget_model->create($db);
                    // $idbdgt = $this->Budget_model->getLastId()["id_bdgt"];

                    $db = [
                        'id_account' => $this->input->post('acc'),
                        'subacc' => '000',
                        'product' => '00000',
                        'id_user' => $id,
                        'description'=> $this->input->post('desc'),
                        'source'=> $this->input->post('source'),
                        'category'=> $this->input->post('category'),
                        'doc_ref'=> $this->input->post('docref'),
                        'doc_number'=> $this->input->post('dns'),
                        'desc_source'=> $this->input->post('dsm'),
                        'currency'=> $this->input->post('cur'),
                        'amount_debit'=> $this->input->post('debit'),
                        'amount_credit'=> $this->input->post('credit'),
                        'status' => 'no',
                        'id_bdgt' => $idbdgt,
                        'budget_year' => $this->input->post('date')

                    ];

                // var_dump($db);die;
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
                        $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                        redirect('user/');
                    } else {
                        echo "Failed to create Budget";
                        die;
                        $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Budget'));
                    }

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
                } else {
                    $this->load->view('templates/header');
                    $this->load->view('templates/sidebar_user',$data);
                    $this->load->view('user/budget/addbudget',$data);
                    $this->load->view('templates/footer');
                }
            }
        
    public function dataactual()
    {
                $ci = get_instance();

            $id = $ci->session->userdata('id');
            $user = $this->User_model->selectUser($id);
            // $sisa = $bg['amount_debit']-$actual['amount_debit'];
            $bg = $this->DetailBudget_model->selectAll();
            $actual = $this->Actual_model->useractById($id);
            $data = [
                'actual' => $actual,
                'user' => $user,
                'bg' => $bg
                // 'sisa' => $sisa

            ];
            // var_dump($bg);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user',$data);
            $this->load->view('user/data_actual', $data);
            $this->load->view('templates/footer');
        
    }
    public function detailbudget($id)
    {
                $ci = get_instance();

            $iduser = $ci->session->userdata('id');
            $user = $this->User_model->selectUser($id);
            // $sisa = $bg['amount_debit']-$actual['amount_debit'];
            $bg = $this->DetailBudget_model->selectAll();
            $actual = $this->Actual_model->getactdetail($id, $iduser);
            $data = [
                'actual' => $actual,
                'user' => $user,
                'bg' => $bg
                // 'sisa' => $sisa

            ];
            // var_dump($bg);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user');
            $this->load->view('user/data_actual', $data);
            $this->load->view('templates/footer');
        
    }

    public function json_detail_actual()
    {
        $id = (int)$_POST['id_budget'];
        $iduser = (int)$_POST['id_user'];
        $data = $this->Actual_model->getactdetail($id, $iduser);
        $credit = $this->Actual_model->sumcredittuser($id, $iduser)[0]->amount_credit;
        $budget = $this->Actual_model->sumdebittuser($id, $iduser)[0]->amount_debit;
        $sisa = $budget - $credit;
        $totalActual = "<b>Total Transaction : ".number_format($sisa, 0, ",", ".")." IDR </b>";
        $content =  '';
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['desc_source'] . '</td>';
                $isi_table .= '<td>' . $d['description'] . '</td>';
                $isi_table .= '<td>' . $d['source'] . '</td>';
                // $isi_table .= '<td>' . $d['currency'] . '</td>';
                $isi_table .= '<td>' . number_format($d['amount_debit'], 0, ",", ".") . ' '. $d['currency'] .'</td>';
                $isi_table .= '<td>' . number_format($d['amount_credit'], 0, ",", ".") . ' '. $d['currency'] .'</td>';
                $isi_table .= '<td>' . date('M d, Y', strtotime($d['actual_date'])) . '</td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .=  $isi_table;
       $dt = array("isi"=>$content,"total"=>$totalActual);
        $output = json_encode($dt);
        // $isi = json_encode($data);
        echo $output;
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
    public function change_password(){
        $this->form_validation->set_rules('username', 'username');
        $this->form_validation->set_rules('passwd', 'password', 'required|min_length[4]');

        $username = $this->input->post('username');
        $passwd = $this->input->post('passwd');
        $user = $this->db->get_where('tuser', ['username_user' => $username])->row_array();

        if ($this->form_validation->run()) {
            if (isset($user)) {
                if (password_verify($passwd, $user['password_user'])) {
                    $this->session->set_userdata('id', $user['id_user']);
                    $this->session->set_userdata('username', $user['username_user']);
                    $this->session->set_userdata('id_role', $user['id_role']);
                    if ($user['id_role'] == '1') {
                        echo "<script>location.href='" . base_url('admin') . "';alert('Anda Berhasil Masuk Sebagai Admin');</script>";
                    } else if ($user['id_role'] != '1') {
                        echo "USER";
                        echo "<script>location.href='" . base_url('User') . "';alert('Anda Berhasil Masuk Sebagai User');</script>";
                    }
                } else {
                    echo "<script>location.href='" . base_url('auth/') . "';alert('Password Salah');</script>";
                }
            } else {
                echo "<script>location.href='" . base_url('auth/') . "';alert('User Tidak Ada');</script>";
            }
        } else {
            // var_dump($user);
            // die;
            $this->load->view('user/change_password');
        }
    }
}
