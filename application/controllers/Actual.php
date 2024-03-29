<?php
defined('BASEPATH') or exit('No direct script access allowed');
require 'vendor/autoload.php';

date_default_timezone_set("Asia/Jakarta");

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Shared;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Reader\Csv;

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
        $this->load->model('Log_model');

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
        if ($ci->session->userdata('id_role') == '1') {

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
        if ($ci->session->userdata('id_role') == '2') {
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
    public function dataactual()
    {
        $thn = date('Y');
        $actual = $this->Actual_model->selectAll($thn);
        $data = [
            'actual' => $actual,
            'heading' => 'actual'
        ];
        // var_dump($data);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin', $data);
        $this->load->view('admin/actual/data_actual', $data);
        $this->load->view('templates/footer');
    }
    public function addactual($id)
    {
        $this->form_validation->set_rules('bg', 'Budget', '');
        // $this->form_validation->set_rules('user', 'Division', '');
        $this->form_validation->set_rules('desc', 'Description', '');
        $this->form_validation->set_rules('source', 'Departement', '');
        $this->form_validation->set_rules('category', 'Departement', '');
        $this->form_validation->set_rules('docref', 'Departement', '');
        $this->form_validation->set_rules('dns', 'Departement', '');
        $this->form_validation->set_rules('dsm', 'Departement', '');
        // $this->form_validation->set_rules('cur', 'Departement', 'required');
        $this->form_validation->set_rules('debit', 'Departement', '');
        $this->form_validation->set_rules('credit', 'Departement', '');
        $this->form_validation->set_rules('date', 'Date', 'required');

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
        $adate = date('Y-m-d', strtotime($this->input->post('date')));
        // var_dump($bg);die;
        if ($this->form_validation->run() == true) {
            $db = [
                'subacc' => '000',
                'product' => '00000',
                // 'id_user' => $this->input->post('user'),
                'description' => $this->input->post('desc'),
                'source' => $this->input->post('source'),
                'category' => $this->input->post('category'),
                'doc_ref' => $this->input->post('docref'),
                'doc_number' => $this->input->post('dns'),
                'desc_source' => $this->input->post('dsm'),
                'currency' => 'IDR',
                'amount_debit' => $this->input->post('debit'),
                'amount_credit' => $this->input->post('credit'),
                'actual_date' => $adate,
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
                redirect('budget/Detailbudget/' . $id);
            } else {
                echo "Failed to create actual";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create actual'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/actual/add_actual', $data);
            $this->load->view('templates/footer');
        }
    }
    public function editactual($id)
    {

        $this->form_validation->set_rules('bg', 'Budget', '');
        // $this->form_validation->set_rules('user', 'Division', '');
        $this->form_validation->set_rules('desc', 'Description', '');
        $this->form_validation->set_rules('source', 'Departement', '');
        $this->form_validation->set_rules('category', 'Departement', '');
        $this->form_validation->set_rules('docref', 'Departement', '');
        $this->form_validation->set_rules('dns', 'Departement', '');
        $this->form_validation->set_rules('dsm', 'Departement', '');
        // $this->form_validation->set_rules('cur', 'Departement', 'required');
        $this->form_validation->set_rules('debit', 'Departement', '');
        $this->form_validation->set_rules('credit', 'Departement', '');
        $this->form_validation->set_rules('date', 'Date', 'required');

        $actual = $this->Actual_model->getactById($id);
        // $user = $this->User_model->selectAll();
        $bgs = $this->DetailBudget_model->selectAll();

        $account = $this->Account_model->selectAll();
        $data = [
            'bg' => $bgs,
            'actual' => $actual,
            // 'user' => $user,
            'account' => $account,
            'heading' => 'actual'
        ];
        // var_dump($bg);die;

        if ($this->form_validation->run() == true) {
            $db = [
                'id_actual' => $id,
                'subacc' => '000',
                'product' => '00000',
                // 'id_user' => $this->input->post('user'),
                'description' => $this->input->post('desc'),
                'source' => $this->input->post('source'),
                'category' => $this->input->post('category'),
                'doc_ref' => $this->input->post('docref'),
                'doc_number' => $this->input->post('dns'),
                'desc_source' => $this->input->post('dsm'),
                'currency' => 'IDR',
                'amount_debit' => $this->input->post('debit'),
                'amount_credit' => $this->input->post('credit'),
                'id_budget' => $this->input->post('bg'),
                'actual_date' => $this->input->post('date')
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
            redirect('budget/detailbudget/' . $id_budget);

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/actual/edit_actual', $data);
            $this->load->view('templates/footer');
            // var_dump($data['actual']);die;
        }
    }
    public function deleteactual($id, $id_budget)
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
        redirect('budget/detailbudget/' . $id_budget);
        // }
    }
    // public function upload(){ upload by PHPExcel
    // 	// $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
    // 	if(isset($_FILES["file"]["name"])){
    //               // upload
    //             $file_tmp = $_FILES['file']['tmp_name'];
    //             $file_name = $_FILES['file']['name'];
    //             $file_size =$_FILES['file']['size'];
    //             $file_type=$_FILES['file']['type'];
    //             // move_uploaded_file($file_tmp,"uploads/".$file_name); // simpan filenya di folder uploads

    //             $object = PHPExcel_IOFactory::load($file_tmp);

    //             foreach($object->getWorksheetIterator() as $worksheet){

    //                 $highestRow = $worksheet->getHighestRow();
    //                 $highestColumn = $worksheet->getHighestColumn();

    //                 for($row=13; $row<=$highestRow; $row++){

    //                     $id_budget = $worksheet->getCellByColumnAndRow(0, $row)->getValue();
    //                     $subacc = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
    //                     $product = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
    //                     $description = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
    //                     $source = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
    //                     $category = $worksheet->getCellByColumnAndRow(5, $row)->getValue();
    //                     $doc_ref = $worksheet->getCellByColumnAndRow(6, $row)->getValue();
    //                     $doc_number = $worksheet->getCellByColumnAndRow(7, $row)->getValue();
    //                     $desc_source = $worksheet->getCellByColumnAndRow(8, $row)->getValue();
    //                     $currency = $worksheet->getCellByColumnAndRow(9, $row)->getValue();
    //                     $amount_debit = $worksheet->getCellByColumnAndRow(10, $row)->getValue();
    //                     $amount_credit = $worksheet->getCellByColumnAndRow(11, $row)->getValue();
    //                     $actual_date = $worksheet->getCellByColumnAndRow(12, $row)->getValue();
    //                     $data[] = array(
    //                         'id_budget'         => $id_budget,
    //                         'subacc'            =>$subacc,
    //                         'product'           =>$product,
    //                         'description'       =>$description,
    //                         'source'            =>$source,
    //                         'category'          =>$category,
    //                         'doc_ref'           =>$doc_ref,
    //                         'doc_number'        =>$doc_number,
    //                         'desc_source'       =>$desc_source,
    //                         'currency'          =>$currency,
    //                         'amount_debit'      =>$amount_debit,
    //                         'amount_credit'     =>$amount_credit,
    //                         'actual_date'       =>date("Y-m-d",strtotime($actual_date)),
    //                     );
    //                 } 
    //             }
    //             var_dump($data[15]['actual_date']);die;
    //             if($this->db->insert_batch('tactual', $data) > 0){
    //                 echo "<script>location.href='" . base_url('actual/dataactual') . "';alert('Success to Add Transaction List');</script>";
    //             }else{
    //                 echo "<script>location.href='" . base_url('admin/') . "';alert('Failed to Add Transaction List');</script>";
    //             }

    //             // $message = array(
    //             //     'message'=>'<div class="alert alert-success">Import file excel berhasil disimpan di database</div>',
    //             // );

    //             // $this->session->set_flashdata($message);
    //             // redirect('admin/');
    //         }
    //         else
    //         {
    //              $message = array(
    //                 'message'=>'<div class="alert alert-danger">Import file gagal, coba lagi</div>',
    //             );
    //             $data = [
    //                 'heading' => 'actual'
    //             ];
    //             $this->session->set_flashdata($message);
    //             $this->load->view('templates/header');
    //             $this->load->view('templates/sidebar_admin',$data);
    //             $this->load->view('admin/actual/upload_actual');
    //             $this->load->view('templates/footer');
    //         }
    // }
    public function upload()
    { //upload use spreadsheets
        $file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

        if (in_array($_FILES['upload']['type'], $file_mimes)) {
            $config['upload_path']          = './upload/';
            $config['allowed_types']        = 'xls|xlsx';
            $config['max_size']             = 3600;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('upload')) {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                $spreadsheet = $reader->load($_FILES['upload']['tmp_name']);

                $d = $spreadsheet->getActiveSheet()->toArray();
                unset($d[0]);
                $datas = array();

                foreach ($d as $s) {
                    $data = [
                        'id_budget'         => $s[0],
                        'subacc'            => $s[1],
                        'product'           => $s[2],
                        'description'       => $s[3],
                        'source'            => $s[4],
                        'category'          => $s[5],
                        'doc_ref'           => $s[6],
                        'doc_number'        => $s[7],
                        'desc_source'       => $s[8],
                        'currency'          => $s[9],
                        'amount_debit'      => $s[10],
                        'amount_credit'     => $s[11],
                        'actual_date'       => date("Y-m-d", strtotime($s[12])),
                    ];
                    // array_push($datas,$data);
                    // var_dump($data);die;
                    //insert data to database
                    if ($this->Actual_model->create($data) > 0) {
                        $status = [
                            'id_budget' => $s[0],
                            'status' => 'yes'
                        ];
                        if ($this->DetailBudget_model->update($status) > 0) {
                            echo "<script>alert('Success to Update Status');</script>";
                        }
                        echo "<script>location.href='" . base_url('admin/') . "';alert('Success to Add Transaction List');</script>";
                    } else {
                        echo "<script>location.href='" . base_url('actual/upload2') . "';alert('Failed to Add Transaction List');</script>";
                    }
                }
            } else {
                echo "<script>location.href='" . base_url('actual/upload2') . "';alert('Failed to Add Transaction List');</script>";
            }
        } else {
            echo "<script>location.href='" . base_url('actual/upload2') . "';alert('Failed to Add Transaction List');</script>";
        }
        //END UPLOAD
    }
    public function upload2()
    {
        $data = [
            'heading' => 'actual'
        ];
        // echo "Masuk ini";

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin', $data);
        $this->load->view('admin/actual/upload_actual');
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
}
