<?php
defined('BASEPATH') or exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

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
        $this->load->model('Travelda_model');
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
        $id = $ci->session->userdata('id');
        $ip = $this->input->ip_address();
        if ($ci->session->userdata('id_role') == '1') {

            if (time() - $_SESSION['login_time'] >= 1800) {
                $data = [
                    'id_user' => $id,
                    'remarks' => 'Session Timeout',
                    'ip_add' => $ip
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
                    'ip_add' => $ip
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
    public function databudget()
    {
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $this->form_validation->set_rules('tahun', 'tahun', 'required');

            $thn = $this->input->post('tahun');
            $thn = '';

            if ($this->form_validation->run() == true) {
                $thn = $this->input->post('tahun');
            } else {
                $thn = date('Y');
            }
            $bg = $this->Budget_model->selectbudgettahun($thn);
            // var_dump($bg);
            // die;
            $tahun = $this->Budget_model->tahun();
            $data = [
                'bg' => $bg,
                'heading' => 'budget',
                'tahun' => $tahun,
                'thn' => $thn
            ];
            // var_dump($bg);
            // die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/budget/header_budget', $data);
            $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        }
    }
    public function datadetailbudget($id)
    {
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            $bg = $this->DetailBudget_model->selectbudget($id);
            $sisa = $this->DetailBudget_model->sisabudget($id);

            $data = [
                'bg' => $bg,
                'sisa' => $sisa,
                'id' => $id,
                'heading' => 'budget'
            ];
            // var_dump($sisa);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/budget/data_budget', $data);
            $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        }
    }
    public function detailbudget($id)
    {
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
                'id' => $idbudgets['id_bdgt'],
                'heading' => 'budget'
            ];
            // var_dump($bgs);
            // echo "<br />";
            // var_dump($idbudgets);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/budget/detailbudget', $data);
            $this->load->view('templates/footer');
        } else {
            redirect('auth/login');
        }
    }
    public function detailbudgetdata($thn)
    {
        // $ci = get_instance();
        // if ($ci->session->userdata('id_role') == '1') {

        $bgs = $this->DetailBudget_model->selectAllbyyear($thn);
        $data = [
            'bg' => $bgs,
            'heading' => 'budget'
        ];
        // var_dump($bgs[1]);
        // die;
        // echo "<br />";
        // var_dump($idbudgets);die;
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin', $data);
        $this->load->view('admin/budget/data_detailbudget', $data);
        $this->load->view('templates/footer');
        // } else {
        //     redirect('auth/login');
        // }
    }

    // public function addbudget($id){
    //     $ci = get_instance();
    //     if ($ci->session->userdata('id_role') != '1') {
    //         redirect('auth/');
    //     } else {
    //         // $this->form_validation->set_rules('acc', 'Account', '');
    //         // $this->form_validation->set_rules('user', 'Division', '');
    //         $this->form_validation->set_rules('desc', 'Description', 'required');
    //         // $this->form_validation->set_rules('source', 'Departement', '');
    //         // $this->form_validation->set_rules('category', 'Departement', '');
    //         // $this->form_validation->set_rules('docref', 'Departement', '');
    //         // $this->form_validation->set_rules('dns', 'Departement', '');
    //         $this->form_validation->set_rules('dsm', 'Doc. of source module', 'required');
    //         // $this->form_validation->set_rules('cur', 'Currency', 'required');
    //         $this->form_validation->set_rules('debit', 'Departement', 'required');
    //         $this->form_validation->set_rules('date', 'Date', 'required');
    //         $this->form_validation->set_rules('credit', 'Departement', '');

    //         $h = $this->Budget_model->selectuser($id);
    //         $user = $this->User_model->selectAll($id);
    //         $account = $this->Account_model->selectAll($id);
    //         // $id = $id;
    //         $t = date("Y-m-d H:i:s");
    //         $periode = date("Y", strtotime($this->input->post('date')));
    //         $data = [
    //             'user' => $user,
    //             'account' => $account,
    //             'h' => $h,
    //             'id' => $id,
    //             'heading' => 'budget'
    //         ];
    //         // var_dump($h);die;
    //         if ($this->form_validation->run() == true) {
    //             $db = [
    //                 'id_account' => $h['acc'],
    //                 'subacc' => '000',
    //                 'product' => '00000',
    //                 'id_user' => $h['user'],
    //                 'description'=> $this->input->post('desc'),
    //                 // 'source'=> $this->input->post('source'),
    //                 // 'category'=> $this->input->post('category'),
    //                 // 'doc_ref'=> $this->input->post('docref'),
    //                 // 'doc_number'=> $this->input->post('dns'),
    //                 'desc_source'=> $this->input->post('dsm'),
    //                 'currency'=> 'IDR',
    //                 'amount_debit'=> $this->input->post('debit'),
    //                 'amount_credit'=> $this->input->post('credit'),
    //                 'status' => 'no',
    // 	'create_date' => $t,
    //                 'id_bdgt' => $id,
    //                 'budget_year' => $periode
    //             ];

    //         // var_dump($db);die;
    //         // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
    //             if ($this->DetailBudget_model->create($db) > 0) {
    //                     // $id = $id;
    //                     $p = $this->Budget_model->selectheader($id);
    //                     // var_dump($id);die;
    //                     $data = [
    //                         'id_bdgt' => $id,
    //                         'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
    //                     ];
    //                     $this->Budget_model->update($data);                        
    //                 $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
    //                 redirect('budget/datadetailbudget/'. $id);
    //             } else {
    //                 echo "Failed to create Budget";
    //                 die;
    //                 $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Budget'));
    //             }

    //         // }
    //         // redirect('admin/pelanggan/tambahpelanggan');
    //         } else {
    //             $this->load->view('templates/header');
    //             $this->load->view('templates/sidebar_admin',$data);
    //             $this->load->view('admin/budget/addbudget',$data);
    //             $this->load->view('templates/footer');
    //         }
    //     }
    // }
    public function addbudget()
    {
        $ci = get_instance();
        // $id = $ci->session->userdata('id');

        $this->form_validation->set_rules('acc', 'Account', '');
        $this->form_validation->set_rules('user', 'Division', '');
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

        $user = $this->User_model->selectAll();
        $account = $this->Account_model->selectAll();
        $data = [
            'user' => $user,
            'account' => $account,
            // 'usr' => $usr,
            // 'id' => $id,
            'heading' => 'budget'
        ];
        // var_dump($data['h'][0]);die;
        $account = $this->input->post('acc');
        $id = $this->input->post('user');

        $periode = date("Y", strtotime($this->input->post('date')));

        if ($this->form_validation->run() == true) {
            // var_dump($this->input->post('debit'));
            // die;
            $find = $this->Budget_model->findheader($id, $account, $periode);
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
                    'budget_year' => $periode
                ];
                // var_dump($db);
                // die;
                $budget = $this->DetailBudget_model->create($db);
                $header = $find[0]['id_bdgt'];
                $p = $this->Budget_model->selectheader($header);
                // var_dump($p);
                $data = [
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                ];
                // var_dump($find[0]['id_bdgt']);die;
                $this->Budget_model->update($data);
                echo "<script>location.href='" . base_url('budget/datadetailbudget/' . $header) . "';alert('Success to Add Data');</script>";
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
                    $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                    echo "<script>alert('Success to Update Data');</script>";
                    redirect('budget/datadetailbudget/' . $idbdgt);
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
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/budget/addbudget', $data);
            $this->load->view('templates/footer');
        }
    }
    public function deleteheaderbudget($id)
    {
        // $ci = get_instance();
        // if ($ci->session->userdata('id') != '1') {
        //     redirect('admin/');
        // } else {
        $b = $this->DetailBudget_model->deletebudget($id);
        $idbudget = $this->DetailBudget_model->selectiddetail($id);
        // var_dump($idbudget['id_bdgt']);die;
        $p = $this->Budget_model->selectheader($b['id_bdgt']);
        $total = $b['total_budget'] - $b['amount_debit'];
        // var_dump($total);die;
        $data = [
            'id_bdgt' => $b['id_bdgt'],
            'total_budget' => $total
        ];
        $this->Budget_model->update($data);
        if ($id) {
            if ($this->DetailBudget_model->delete($id) > 0) {
                redirect('budget/datadetailbudget/' . $idbudget['id_bdgt']);
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
    public function addheaderbudget()
    {
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
                'account' => $account,
                'heading' => 'budget'
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
                $id_bdgt = $this->Budget_model->create($db);
                // var_dump($data);die;
                // id_account,subacc,product,id_user,description,source,category,doc_ref,doc_number,desc_source,currency,amount_debit,amount_credit,create_date,status
                if ($id_bdgt > 0) {
                    $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                    redirect('budget/datadetailbudget/' . $id_bdgt);
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
                $this->load->view('templates/sidebar_admin', $data);
                $this->load->view('admin/budget/addheaderbudget', $data);
                $this->load->view('templates/footer');
            }
        }
    }
    public function editbudget($id)
    {
        $ci = get_instance();
        if ($ci->session->userdata('id_role') != '1') {
            redirect('auth/');
        } else {
            //    $this->form_validation->set_rules('acc', 'Account', '');
            //    $this->form_validation->set_rules('user', 'Division', '');
            $this->form_validation->set_rules('desc', 'Description', 'required');
            $this->form_validation->set_rules('program', 'Programme', 'required');
            //    $this->form_validation->set_rules('category', 'Departement', '');
            //    $this->form_validation->set_rules('docref', 'Departement', '');
            //    $this->form_validation->set_rules('dns', 'Departement', '');
            $this->form_validation->set_rules('dsm', 'Remarks', '');
            //    $this->form_validation->set_rules('cur', 'Currency', 'required');
            $this->form_validation->set_rules('debit', 'Departement', '');
            $this->form_validation->set_rules('cat_bdgt', 'Budget Category', 'required');
            //    $this->form_validation->set_rules('date', 'Date', 'required');
            //    $this->form_validation->set_rules('credit', 'Departement', '');

            $bdgt = $this->DetailBudget_model->selectiddetail($id);
            $bg = $this->DetailBudget_model->getbgById($id);

            $user = $this->User_model->selectAll();
            $account = $this->Account_model->selectAll();
            $data = [
                'bg' => $bg,
                'user' => $user,
                'account' => $account,
                'heading' => 'budget'
            ];
            // var_dump($data['bg']);die;

            if ($this->form_validation->run() == true) {
                $db = [
                    'id_budget' => $id,
                    'id_account' => $bg['id_account'],
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $bg['id_user'],
                    'description' => $this->input->post('desc'),
                    'program' => $this->input->post('program'),
                    // 'category'=> $this->input->post('category'),
                    // 'doc_ref'=> $this->input->post('docref'),
                    // 'doc_number'=> $this->input->post('dns'),
                    'desc_source' => $this->input->post('dsm'),
                    'currency' => 'IDR',
                    'amount_debit' => $this->input->post('debit'),
                    'amount_credit' => 0,
                    'status' => 'no',
                    'category_budget' => $this->input->post('cat_bdgt'),
                    'budget_year' => $bg['budget_year'],
                    'id_bdgt' => $bdgt['id_bdgt']
                ];
                // var_dump($db);die;

                // echo "<br/>";
                if ($this->DetailBudget_model->update($db) > 0) {

                    $p = $this->Budget_model->selectheader($bdgt['id_bdgt']);
                    // var_dump($bg['amount_debit']);echo "<br/>";
                    // var_dump(intval($p["total_budget"])- $bg['amount_debit']);            echo "<br/>";
                    if ($p['total_budget'] <= $db['amount_debit']) {
                        $data = [
                            'id_bdgt' => $bdgt['id_bdgt'],
                            'total_budget' => intval($p["total_budget"]) + $db["amount_debit"]
                        ];
                    } else {
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
                redirect('budget/datadetailbudget/' . $bdgt['id_bdgt']);

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
            } else {
                // var_dump($data);die;
                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin', $data);
                $this->load->view('admin/budget/edit_budget', $data);
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
        var_dump($idbudget);
        die;
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
    public function travelda()
    {

        $user = $this->User_model->selectAll();
        $tahun = $this->Travelda_model->tahun();

        $data = [
            'user' => $user,
            'heading' => 'budget',
            'tahun' => $tahun

        ];
        // var_dump($data);die;
        $this->form_validation->set_rules('user', 'User', 'required');
        $this->form_validation->set_rules('grade', 'Grade', 'required');
        $this->form_validation->set_rules('hari', 'Days', 'required');
        $this->form_validation->set_rules('tujuan', 'Destination', 'required');
        $this->form_validation->set_rules('program', 'Program', 'required');
        $this->form_validation->set_rules('qty', 'Qty', 'required');
        $this->form_validation->set_rules('periode', 'Periode', 'required');

        if ($this->form_validation->run() == true) {
            $periode = $this->input->post('periode');
            // var_dump($periode);die;

            $db2 = [
                'id_user' => $this->input->post('user'),
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
            $grade = $this->Travelda_model->getidbygrade($db2['grade'], $periode);

            $hotel = $db2['hari'] * $db2['qty'] * $grade['hotel'];
            $ted = $db2['hari'] * $db2['qty'] * $grade['daily_allowance'];
            $ticket = $db2['qty'] * 2 * $grade['ticket'];
            $find = $this->Budget_model->findheader($db2['id_user'], $account1, $periode);
            //	var_dump($grade);die;
            // var_dump($travel_da[8]['hotel']);die;

            // var_dump($travel_da[implode($grade)-1]['hotel']);die;
            // var_dump('Daily Allowance ' .$this->input->post('tujuan') .' '.$db['grade']);die;

            if (count($find) > 0) {
                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Daily Allowance',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'DA#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $hotel,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
                    'budget_year' => $periode
                ];
                // var_dump($db);die;
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
                    'id_user' => $db2['id_user'],
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account1,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Daily Allowance',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'DA#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $hotel,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
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

            $find = $this->Budget_model->findheader($db2['id_user'], $account2, $periode);

            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if (count($find) > 0) {
                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Travel Expense Domestic',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'Akomodasi#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ted,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
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
                    'id_user' => $db2['id_user'],
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account2,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Travel Expense Domestic',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'Akomodasi#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ted,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
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

            $find = $this->Budget_model->findheader($db2['id_user'], $account3, $periode);

            // var_dump($hotel);die;
            // var_dump(count($find));die;
            if (count($find) > 0) {
                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Ticket',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'Ticket#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ticket,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $find[0]['id_bdgt'],
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
                echo "<script>location.href='" . base_url('admin/') . "';alert('Success to Update Data Ticket');</script>";
            } else {
                $da = [
                    'id_acc' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'total_budget' => 0,
                    'periode_year' => $periode
                ];
                $da = $this->Budget_model->create($da);

                $db = [
                    'id_account' => $account3,
                    'subacc' => '000',
                    'product' => '00000',
                    'id_user' => $db2['id_user'],
                    'description' => 'Ticket',
                    'source' => '',
                    'category' => '',
                    'doc_ref' => '',
                    'doc_number' => '',
                    'desc_source' => 'Ticket#' . $db2['program'] . '#' . $db2['tujuan'] . '#' . $db2['grade'] . '#' . $db2['hari'] . '#Hari',
                    'currency' => 'IDR',
                    'amount_debit' => $ticket,
                    'amount_credit' => 0,
                    'status' => 'no',
                    'id_bdgt' => $da,
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
                echo "<script>location.href='" . base_url('admin/') . "';alert('Success to Add Ticket');</script>";
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
            $this->load->view('templates/sidebar_admin', $data);
            $this->load->view('admin/budget/add_TravelDA', $data);
            $this->load->view('templates/footer');
        }
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
