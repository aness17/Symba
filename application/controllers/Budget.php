<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Budget extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *      http://example.com/index.php/welcome
     *  - or -
     *      http://example.com/index.php/welcome/index
     *  - or -
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
        $this->load->model('Account_model');
        $this->load->model('Departement_model');
        $this->load->model('Division_model');
        $this->load->model('Station_model');
        $this->load->model('Costcen_model');
        $this->load->model('Lob_model');
        $this->load->model('Items_model');
        $this->load->model('Roles_model');
        $this->load->model('DetailBudget_model');
        $this->load->model('Budget_model');
        $this->load->model('Actual_model');
        $this->cekauth();

        if ($this->session->userdata('id') === null) {
            redirect('auth');
        }
    }
    public function cekauth(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '2') {
            $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not autorized'));
            $this->session->unset_userdata('id_user');
            $this->session->unset_userdata('id_role');
            $this->session->unset_userdata('name_user');
            redirect('auth/');
        }
    }
    public function databudget(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $bg = $this->Budget_model->selectAll();
            $data = [
                'bg' => $bg
            ];
            // var_dump($bg);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/budget/header_budget',$data);
            $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        } 
    }
    public function datadetailbudget($id){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $bg = $this->DetailBudget_model->selectbudget($id);
            $sisa = $this->DetailBudget_model->sisabudget($id);
            
            $data = [
                'bg' => $bg,
                'sisa' => $sisa,
                'id' => $id
            ];
            // var_dump($sisa);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/budget/data_budget',$data);
            $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        } 
    }
    public function detailbudget($id){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $bgs = $this->DetailBudget_model->sisabudgett($id);
            $actdetail = $this->Actual_model->getactdetail_budget($id);
            $sumcreditt = $this->Actual_model->sumcreditt($id)[0]->amount_credit;
            $sumdebitt = $this->Actual_model->sumdebitt($id)[0]->amount_debit;
            $totaltx = $sumdebitt - $sumcreditt;
            $idbudgets = $this->DetailBudget_model->selectiddetail($id);
            $data = [
                'bg' => $bgs,
                'actdetail' => $actdetail,
                'totaltx' => $totaltx,
                'id' => $idbudgets['id_bdgt']          
            ];
            // var_dump($bgs);
            // echo "<br />";
            // var_dump($idbudgets);die;
                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin');
                $this->load->view('admin/budget/detailbudget',$data);
                $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        } 
    }
    
        public function addbudget($id){
            $ci = get_instance();
            if ($ci->session->userdata('id_role') != '1') {
                redirect('auth/');
            } else {
                // $this->form_validation->set_rules('acc', 'Account', '');
                // $this->form_validation->set_rules('user', 'Division', '');
                $this->form_validation->set_rules('desc', 'Description', 'required');
                $this->form_validation->set_rules('source', 'Departement', '');
                $this->form_validation->set_rules('category', 'Departement', '');
                $this->form_validation->set_rules('docref', 'Departement', '');
                $this->form_validation->set_rules('dns', 'Departement', '');
                $this->form_validation->set_rules('dsm', 'Departement', 'required');
                $this->form_validation->set_rules('cur', 'Departement', 'required');
                $this->form_validation->set_rules('debit', 'Departement', 'required');
                $this->form_validation->set_rules('credit', 'Departement', '');

                $h = $this->Budget_model->selectuser($id);
                $user = $this->User_model->selectAll($id);
                $account = $this->Account_model->selectAll($id);
                // $id = $id;
                $data = [
                    'user' => $user,
                    'account' => $account,
                    'h' => $h,
                    'id' => $id
                ];
                // var_dump($h);die;
                if ($this->form_validation->run() == true) {
                    $db = [
                        'id_account' => $h['acc'],
                        'subacc' => '000',
                        'product' => '00000',
                        'id_user' => $h['user'],
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
                        'id_bdgt' => $id

                    ];

                // var_dump($db);die;
                // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
                    if ($this->DetailBudget_model->create($db) > 0) {
                            // $id = $id;
                            $p = $this->Budget_model->selectheader($id);
                            // var_dump($id);die;
                            $data = [
                                'id_bdgt' => $id,
                                'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                            ];
                            $this->Budget_model->update($data);                        
                        $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                        redirect('budget/datadetailbudget/'. $id);
                    } else {
                        echo "Failed to create Budget";
                        die;
                        $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Budget'));
                    }

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
                } else {
                    $this->load->view('templates/header');
                    $this->load->view('templates/sidebar_admin');
                    $this->load->view('admin/budget/Addbudget',$data);
                    $this->load->view('templates/footer');
                }
            }
        }
        public function deleteheaderbudget($id){
        // $ci = get_instance();
        // if ($ci->session->userdata('id') != '1') {
        //     redirect('admin/');
        // } else {
            $b = $this->DetailBudget_model->deletebudget($id);
            $idbudget = $this->DetailBudget_model->selectiddetail($id);
            // var_dump($idbudget['id_bdgt']);die;
            $p = $this->Budget_model->selectheader($b['id_bdgt']);
            $total = $b['total_budget']-$b['amount_debit'];
            // var_dump($total);die;
             $data = [
                    'id_bdgt' => $b['id_bdgt'],
                    'total_budget' => $total
                ];
                $this->Budget_model->update($data);
        if ($id) {
            if ($this->DetailBudget_model->delete($id) > 0) {
                                redirect('budget/datadetailbudget/'. $idbudget['id_bdgt'] );
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                // echo mysqli_error($con);
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('budget/databudget');
        // }
    }
        public function addheaderbudget(){
            $ci = get_instance();
            if ($ci->session->userdata('id_role') != '1') {
                echo "halooooooo";
                // redirect('auth/');
            } else {
                
                $this->form_validation->set_rules('acc', 'Account', 'required');
                $this->form_validation->set_rules('user', 'Division', 'required');

                $user = $this->User_model->selectAll();
                $account = $this->Account_model->selectAll();
                $data = [
                    'user' => $user,
                    'account' => $account
                ];
                // var_dump($account);die;
                if ($this->form_validation->run() == true) {
                    $db = [
                        'id_acc' => $this->input->post('acc'),
                        'subacc' => '000',
                        'product' => '00000',
                        'id_user' => $this->input->post('user'),
                        'total_budget' => 0

                    ];

                // var_dump($data);die;
                // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
                    if ($this->Budget_model->create($db) > 0) {
                        $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                        redirect('budget/databudget');
                    } else {
                        echo "Failed to create Budget";
                        die;
                        $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Budget'));
                    }

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
                } else {
                                    // var_dump($data);die;

                    $this->load->view('templates/header');
                    $this->load->view('templates/sidebar_admin');
                    $this->load->view('admin/budget/Addheaderbudget',$data);
                    $this->load->view('templates/footer');
                }
            }
        }
        public function editbudget($id){
            $ci = get_instance();
            if ($ci->session->userdata('id_role') != '1') {
                redirect('auth/');
            } else {
               $this->form_validation->set_rules('acc', 'Account', '');
               $this->form_validation->set_rules('user', 'Division', '');
               $this->form_validation->set_rules('desc', 'Description', '');
               $this->form_validation->set_rules('source', 'Departement', '');
               $this->form_validation->set_rules('category', 'Departement', '');
               $this->form_validation->set_rules('docref', 'Departement', '');
               $this->form_validation->set_rules('dns', 'Departement', '');
               $this->form_validation->set_rules('dsm', 'Departement', '');
               $this->form_validation->set_rules('cur', 'Departement', 'required');
               $this->form_validation->set_rules('debit', 'Departement', '');
               $this->form_validation->set_rules('credit', 'Departement', '');

               $bdgt = $this->DetailBudget_model->selectiddetail($id);
               $bg = $this->DetailBudget_model->getbgById($id);
               $user = $this->User_model->selectAll();
               $account = $this->Account_model->selectAll();
               $data = [
                'bg' => $bg,
                'user' => $user,
                'account' => $account
            ];
            // var_dump();die;

            if ($this->form_validation->run() == true) {
                $db = [
                    'id_budget' => $id,
                    'id_account' => $this->input->post('acc'),
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $this->input->post('user'),
                    'description'=> $this->input->post('desc'),
                    'source'=> $this->input->post('source'),
                    'category'=> $this->input->post('category'),
                    'doc_ref'=> $this->input->post('docref'),
                    'doc_number'=> $this->input->post('dns'),
                    'desc_source'=> $this->input->post('dsm'),
                    'currency'=> $this->input->post('cur'),
                    'amount_debit'=> $this->input->post('debit'),
                    'amount_credit'=> $this->input->post('credit'),
                    'status' => 'yes',
                    'id_bdgt' => $bdgt['id_bdgt']          
                ];

            // var_dump($db);
            // echo "<br/>";
                if ($this->DetailBudget_model->update($db) > 0) {
                    $p = $this->Budget_model->selectheader($bdgt['id_bdgt']);
                            // var_dump($bg['amount_debit']);echo "<br/>";
                            // var_dump(intval($p["total_budget"])- $bg['amount_debit']);            echo "<br/>";
                        if($p['total_budget'] <= $db['amount_debit']){
                            $data = [
                                'id_bdgt' => $bdgt['id_bdgt'],
                                'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                            ];
                        }else{
                            $data = [
                                'id_bdgt' => $bdgt['id_bdgt'],
                                'total_budget' => (intval($p["total_budget"]) - $bg['amount_debit']) + $db["amount_debit"]
                            ];
                        }
                            // var_dump($data);die;
                            $this->Budget_model->update($data); 
                    $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
                } else {
                    $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
                }
                redirect('budget/databudget');

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
            } else {

                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin');
                $this->load->view('admin/budget/edit_budget',$data);
                $this->load->view('templates/footer');
            }
        }
    }
    public function deletebudget($id)
    {
        // $ci = get_instance();
        // if ($ci->session->userdata('id') != '1') {
        //     redirect('admin/');
        // } else {
        $idbudget = $this->Detailbudget_model->selectiddetail($id);
        var_dump($idbudget);die;
        if ($id) {
            if ($this->DetailBudget_model->delete($id) > 0) {
                redirect('budget/databudget');
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                // echo mysqli_error($con);
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('budget/databudget');
        // }
    }
    // public function Master(){
    //     $acc = $this->Account_model->selectAll();       
    //     $roles = $this->Roles_model->selectAll();
    //     $dpt = $this->Departement_model->selectAll();
    //     $lob = $this->Lob_model->selectAll();
    //     $costcen = $this->Costcen_model->selectAll();
    //     $station = $this->Station_model->selectAll();

    //     $data = [
    //         'acc' => $acc,
    //         'roles'> $roles,
    //         'dpt' => $dpt,
    //         'lob' => $lob,
    //         'costcen' => $costcen,
    //         'station' => $station
    //     ];

    //     $this->load->view('templates/header');
    //     $this->load->view('templates/sidebar_admin');
    //     $this->load->view('admin/master',$data);
    //     $this->load->view('templates/footer');
    // }
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
}