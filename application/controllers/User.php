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
        $this->cekauth();
    }
    public function cekauth(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') != '3') {
            $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not authorized'));
            $this->session->unset_userdata('id_user');
            $this->session->unset_userdata('id_role');
            $this->session->unset_userdata('name_user');
            redirect('auth/');
        }
    }
    public function index()
    {
            $ci = get_instance();
            $this->form_validation->set_rules('tahun', 'tahun', 'required');

            $thn = $this->input->post('tahun');
            $thn = '';

            if($this->form_validation->run()== true){
                $thn = $this->input->post('tahun');
            }else{
                $thn = date('Y');
            }
            $id = $ci->session->userdata('id');
            $user = $this->User_model->selectUser($id);
            $bg = $this->DetailBudget_model->selectbyid($id,$thn);
            $sisabudget = $this->DetailBudget_model->sisabudgetuser($id,$thn);
            $actual = $this->Actual_model->useractById($id,$thn);
            $debitbudget = $this->DetailBudget_model->sumdebit($id,$thn)[0]->amount_debit;
            $debitactual = $this->Actual_model->sumdebit($id,$thn)[0]->amount_debit;
            $creditbudget = $this->DetailBudget_model->sumcredit($id,$thn)[0]->amount_credit;
            $creditactual = $this->Actual_model->sumcredit($id,$thn)[0]->amount_credit;
            $sisa = ($debitbudget - $debitactual) + ($creditbudget - $creditactual);
            // $detailactual = $this->Actual_model->getactdetail($id,$iduser);
            $budget = $this->Budget_model->selectbudgetuser($id,$thn);
            $diagram = $this->Actual_model->Actualperbulan($id,$thn);
            $tahun = $this->DetailBudget_model->tahun();
            // $pengajuan = $this->DetailBudget_model->sumpengajuan($id);
            $data = [
                'user' => $user,
                // 'pengajuan' => $pengajuan,
                'debit' => $debitbudget - $debitactual,
                'debitactual' => $debitactual,
                'totalbudget' => $debitbudget,
                'diagram' => $diagram,
                'sisa' => $sisa,
                'bgs' => $sisabudget,
                'actual' => $actual,
                'bgg' => $bg,
                'budget' => $budget,
                'tahun' => $tahun,
                'heading' => 'dashboard'
            ];
            // var_dump($diagram);die;
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
        // $this->form_validation->set_rules('source', 'Source', '');
        // $this->form_validation->set_rules('category', 'Category', '');
        // $this->form_validation->set_rules('docref', 'References', '');
        // $this->form_validation->set_rules('dns', 'Desc Source', '');
        $this->form_validation->set_rules('dsm', 'Desc Module', 'required');
        // $this->form_validation->set_rules('cur', 'Currency', 'required');
        $this->form_validation->set_rules('debit', 'Debit', 'required');
        // $this->form_validation->set_rules('credit', 'Credit', '');
        $this->form_validation->set_rules('date', 'Date', 'required');

        $user = $this->User_model->selectUser($id);
        $usr = $this->User_model->getuser($id);
        $account = $this->Account_model->selectAll();
        $data = [
            'user' => $user,
            'account' => $account,
            'usr' => $usr,
            'id' => $id,
            'heading'=>'user'
        ];
        // var_dump($user);die;
        $account = $this->input->post('acc');
        $periode = date("Y", strtotime($this->input->post('date')));
        // var_dump($id,$account,$periode);die;
        if ($this->form_validation->run() == true) {
            $find = $this->Budget_model->findheader($id,$account,$periode);
            
            // var_dump($hotel);die;
            // var_dump($find[0]['id_bdgt']);die;
            if(count($find) > 0){
                $db = [
                    'id_account' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> $this->input->post('desc'),
                    // 'source'=> $this->input->post('source'),
                    // 'category'=> $this->input->post('category'),
                    // 'doc_ref'=> $this->input->post('docref'),
                    // 'doc_number'=> $this->input->post('dns'),
                    'desc_source'=> $this->input->post('dsm'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $this->input->post('debit'),
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_year' => $this->input->post('date')
                ];

                $budget = $this->DetailBudget_model->create($db);
                $p = $this->Budget_model->selectheader($find[0]['id_bdgt']);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);  
                echo "<script>location.href='" . base_url('user/') . "';alert('Success to Update Data');</script>";
            }else{
                $db = [
                    'id_acc' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $this->input->post('date')
                ];
                    
                $idbdgt = $this->Budget_model->create($db);
                // $idbdgt = $this->Budget_model->getLastId()["id_bdgt"];

                $db = [
                    'id_account' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> $this->input->post('desc'),
                    // 'source'=> $this->input->post('source'),
                    // 'category'=> $this->input->post('category'),
                    // 'doc_ref'=> $this->input->post('docref'),
                    // 'doc_number'=> $this->input->post('dns'),
                    'desc_source'=> $this->input->post('dsm'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $this->input->post('debit'),
                    'amount_credit'=> 0,
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
                    echo "<script>alert('Success to Update Data');</script>";
                    redirect('user/');
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
    public function chooseadd()
    {
        $ci = get_instance();

        $id = $ci->session->userdata('id');
        $user = $this->User_model->selectUser($id);
        // $sisa = $bg['amount_debit']-$actual['amount_debit'];
        // $bg = $this->DetailBudget_model->selectAll();
        // $actual = $this->Actual_model->useractById($id);
        $data = [
            // 'actual' => $actual,
            'user' => $user,
            // 'bg' => $bg,
            'heading'=>'user'
            // 'sisa' => $sisa
        ];
        // var_dump($bg);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_user',$data);
        $this->load->view('user/chooseadd', $data);
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
                        echo "<script>location.href='" . base_url('user') . "';alert('Anda Berhasil Masuk Sebagai User');</script>";
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
    public function travelda()
    {
        $ci = get_instance();
        $id = $ci->session->userdata('id');
        $usr = $this->User_model->getUser($id);
        $user = $this->User_model->selectUser($id);

        $data = [
            'usr' => $usr,
            'user' => $user,
            'heading'=>'user'
        ];
        // var_dump($data);die;
        $this->form_validation->set_rules('grade', 'Grade', 'required');
        $this->form_validation->set_rules('hari', 'Days', 'required');
        $this->form_validation->set_rules('tujuan', 'Destination', 'required');
        $this->form_validation->set_rules('qty', 'Qty', 'required');
        $this->form_validation->set_rules('periode', 'Periode', 'required');

        if ($this->form_validation->run() == true) {
            $db = [
                'grade' => $this->input->post('grade'),
                'hari' => $this->input->post('hari'),
                'tujuan' => $this->input->post('tujuan'),
                'qty' => $this->input->post('qty'),
                'periode_year' => $this->input->post('periode')
            ];
            
            $account1 = '104';
            $account2 = '106';
            $account3 = '107';
            $periode = date("Y", strtotime($this->input->post('periode')));
            $grade = $this->Travelda_model->getidbygrade($db['grade']) ;

            $travel_da = $this->Travelda_model->selectAll();
            $hotel = $db['hari']*$db['qty']*$travel_da[implode($grade)-1]['hotel'];
            $ted = $db['hari']*$db['qty']*$travel_da[implode($grade)-1]['daily_allowance'];
            $ticket = $db['qty']*2*$travel_da[implode($grade)-1]['ticket'];
            $find = $this->Budget_model->findheader($id,$account1,$periode);
            // var_dump(implode($grade)-1);
            // var_dump($travel_da[implode($grade)-1]['hotel']);die;
            // var_dump(count($find));die;
            if(count($find) > 0){
                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Daily Allowance',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Daily Allowance ' .$this->input->post('tujuan') .' '.$this->input->post('grade'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $hotel,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_year' => $this->input->post('periode')
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
            }else{
                $da = [
                    'id_acc' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $this->input->post('periode')
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Daily Allowance',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Daily Allowance ' .$this->input->post('tujuan'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $hotel,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
                    'budget_year' => $this->input->post('periode')
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

            $find = $this->Budget_model->findheader($id,$account2,$periode);
            
            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if(count($find) > 0){
                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Travel Expense Domestic',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Travel Expense Domestic ' .$this->input->post('tujuan'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $ted,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_year' => $this->input->post('periode')
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
            }else{
                $da = [
                    'id_acc' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $this->input->post('periode')
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Travel Expense Domestic',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Travel Expense Domestic ' .$this->input->post('tujuan'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $ted,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
                    'budget_year' => $this->input->post('periode')
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
            
            $find = $this->Budget_model->findheader($id,$account3,$periode);
            
            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if(count($find) > 0){
                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Ticket',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Ticket ' .$this->input->post('tujuan'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $ticket,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_year' => $this->input->post('periode')
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
                echo "<script>location.href='" . base_url('user/') . "';alert('Success to Update Data Ticket');</script>";
            }else{
                $da = [
                    'id_acc' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'total_budget' => 0,
                    'periode_year' => $this->input->post('periode')
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $id,
                    'description'=> 'Ticket',
                    'source'=> '',
                    'category'=> '',
                    'doc_ref'=> '',
                    'doc_number'=> '',
                    'desc_source'=> 'Ticket ' .$this->input->post('tujuan'),
                    'currency'=> 'IDR',
                    'amount_debit'=> $ticket,
                    'amount_credit'=> 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
                    'budget_year' => $this->input->post('periode')
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
                echo "<script>location.href='" . base_url('user/') . "';alert('Success to Add Ticket');</script>";
            }

                // $this->session->set_flashdata('message_login', $this->flasher('success', 'account has been registered!'));
                // redirect('user/    ');
            // } else {
            //     echo "Failed to create Travel DA";
            //     die;
            //     $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create account'));
            // }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_user',$data);
            $this->load->view('user/add_TravelDA',$data);
            $this->load->view('templates/footer');
        }
        // }
    }
}
