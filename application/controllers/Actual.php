<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Actual extends CI_Controller
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
        $this->load->model('Actual_model');
        $this->load->model('DetailBudget_model');
        $this->load->model('Budget_model');
        $this->cekauth();

        if ($this->session->userdata('id') === null) {
            redirect('auth');
        }
    }
    public function cekauth(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '2') {
            $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not authorized'));
            $this->session->unset_userdata('id_user');
            $this->session->unset_userdata('id_role');
            $this->session->unset_userdata('name_user');
            redirect('auth/');
        }
    }
    public function dataactual(){
            $actual = $this->Actual_model->selectAll();
            $bg = $this->Actual_model->selectAll();
            $data = [
                'actual' => $actual,
                'heading' => 'actual'
            ];
            // var_dump($data);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin',$data);
            $this->load->view('admin/actual/data_actual',$data);
            $this->load->view('templates/footer');
    }
    public function addactual($id){

            $this->form_validation->set_rules('bg', 'Budget', '');
            // $this->form_validation->set_rules('user', 'Division', '');
            $this->form_validation->set_rules('desc', 'Description', '');
            $this->form_validation->set_rules('source', 'Departement', '');
            $this->form_validation->set_rules('category', 'Departement', '');
            $this->form_validation->set_rules('docref', 'Departement', '');
            $this->form_validation->set_rules('dns', 'Departement', '');
            $this->form_validation->set_rules('dsm', 'Departement', '');
            $this->form_validation->set_rules('cur', 'Departement', 'required');
            $this->form_validation->set_rules('debit', 'Departement', '');
            $this->form_validation->set_rules('credit', 'Departement', '');
            $this->form_validation->set_rules('date','Date','required');

            // $user = $this->User_model->selectAll();
            $bg = $this->DetailBudget_model->selectAll();

            // $debit = $this->DetailBudget_model->sumdebit()[0]->amount_debit;
            // $credit = $this->DetailBudget_model->sumcredit()[0]->amount_credit;
            // $amount = $debit - $credit;
            $data = [
                // 'debit' => $debit,
                // 'credit' => $credit,
                'bg' => $bg,
                'id' => $id,
                'heading' => 'actual'
                // 'user' => $user
            ];
            // var_dump($bg);die;
            if ($this->form_validation->run() == true) {
                $db = [
                    'subacc' => '000',
                    'product' => '00000',
                    // 'id_user' => $this->input->post('user'),
                    'description'=> $this->input->post('desc'),
                    'source'=> $this->input->post('source'),
                    'category'=> $this->input->post('category'),
                    'doc_ref'=> $this->input->post('docref'),
                    'doc_number'=> $this->input->post('dns'),
                    'desc_source'=> $this->input->post('dsm'),
                    'currency'=> $this->input->post('cur'),
                    'amount_debit'=> $this->input->post('debit'),
                    'amount_credit'=> $this->input->post('credit'),
                    'actual_date' => $this->input->post('date'),
                    'id_budget' => $id            
                ];
                

                // var_dump($id);die;
                // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
                if ($this->Actual_model->create($db) > 0) {
                    $status = 'yes';
                    $db = [
                        'status' => $status,
                        'id_budget' => $id
                    ];
                    $this->DetailBudget_model->updatestatus($db, $id);
                    $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                    redirect('budget/Detailbudget/'. $id);
                } else {
                    echo "Failed to create actual";
                    die;
                    $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create actual'));
                }

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
            } else {
                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin',$data);
                $this->load->view('admin/actual/Add_actual',$data);
                $this->load->view('templates/footer');
            }
        
    }
    public function editactual($id){
        
           $this->form_validation->set_rules('bg', 'Budget', '');
         // $this->form_validation->set_rules('user', 'Division', '');
           $this->form_validation->set_rules('desc', 'Description', '');
           $this->form_validation->set_rules('source', 'Departement', '');
           $this->form_validation->set_rules('category', 'Departement', '');
           $this->form_validation->set_rules('docref', 'Departement', '');
           $this->form_validation->set_rules('dns', 'Departement', '');
           $this->form_validation->set_rules('dsm', 'Departement', '');
           $this->form_validation->set_rules('cur', 'Departement', 'required');
           $this->form_validation->set_rules('debit', 'Departement', '');
           $this->form_validation->set_rules('credit', 'Departement', '');

           $actual = $this->Actual_model->getactById($id);
         // $user = $this->User_model->selectAll();
           $bg = $this->DetailBudget_model->selectAll();
           $account = $this->Account_model->selectAll();
           $data = [
            'bg' => $bg,
            'actual' => $actual,
            // 'user' => $user,
            'account' => $account,
            'heading' => 'actual'
        ];

        if ($this->form_validation->run() == true) {
            $db = [
                'id_actual' => $id,
                'subacc' => '000',
                'product' => '00000',
                // 'id_user' => $this->input->post('user'),
                'description'=> $this->input->post('desc'),
                'source'=> $this->input->post('source'),
                'category'=> $this->input->post('category'),
                'doc_ref'=> $this->input->post('docref'),
                'doc_number'=> $this->input->post('dns'),
                'desc_source'=> $this->input->post('dsm'),
                'currency'=> $this->input->post('cur'),
                'amount_debit'=> $this->input->post('debit'),
                'amount_credit'=> $this->input->post('credit'),
                'id_budget' => $this->input->post('bg')            
            ];
            $id_budget  = $this->input->post('id_budget');
            $datas = [
                'status' => 'yes'
            ];
            // var_dump($id_budget);die;

            $this->DetailBudget_model->updatestatus($datas, $id_budget);

            if ($this->Actual_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('budget/Detailbudget/'. $id_budget);

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
        } else {

            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin',$data);
            $this->load->view('admin/actual/edit_actual',$data);
            $this->load->view('templates/footer');
            // var_dump($data['actual']);die;
        }
    }
    public function deleteactual($id,$id_budget)
    {

        if ($id) {
            if ($this->Actual_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('budget/Detailbudget/'. $id_budget);
            // }
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
}