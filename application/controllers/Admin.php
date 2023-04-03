<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
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
        $this->load->model('Account_model');
        $this->load->model('Departement_model');
        $this->load->model('Division_model');
        $this->load->model('Station_model');
        $this->load->model('DetailBudget_model');
        $this->load->model('Actual_model');
        $this->load->model('Costcen_model');
        $this->load->model('Lob_model');
        $this->load->model('Items_model');
        $this->load->model('Roles_model');
        $this->load->model('Budget_model');
        $this->cekauth();

        if ($this->session->userdata('id') === null) {
            redirect('auth/');
        }
    }

    public function cekauth(){
        $ci = get_instance();
        if ($ci->session->userdata('id_role') != '1') {
            $this->session->set_flashdata('message_login', $this->flasher('success', 'Your not autorized'));
            $this->session->unset_userdata('id_user');
            $this->session->unset_userdata('id_role');
            $this->session->unset_userdata('name_user');
            redirect('auth/');
        }
    }
    public function index()
    {

        
            // $bg = $this->DetailBudget_model->summary();
            // $actual = $this->Actual_model->summary();
            $totalactualcr = $this->Actual_model->totalcr()[0]->amount_credit;
            $totalbudgetcr = $this->DetailBudget_model->totalcr()[0]->amount_credit;
            $totalactualdr = $this->Actual_model->totaldr()[0]->amount_debit;
            $totalbudgetdr = $this->DetailBudget_model->totaldr()[0]->amount_debit;
            $totalbudget = $totalbudgetdr - $totalbudgetcr;
            $totalactual = $totalactualdr - $totalactualcr;
            $summary = $this->Actual_model->summary();

            $data = [
                // 'bg' => $bg,
                // 'actual' => $actual,
                'creditactual' => $totalactualcr,
                'creditbudget' => $totalbudgetcr,
                'debitactual' => $totalactualdr,
                'debitbudget' => $totalbudgetdr,
                'totalbudget' => $totalbudget,
                'totalactual' => $totalactual,
                'summary' => $summary
            ];

            // var_dump($totalactualdr);die;
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/dashboard', $data);
            $this->load->view('templates/footer');
            }
    public function budget_detail()
    {
        $iduser = (int)$_POST['id_user'];
        $data = $this->DetailBudget_model->selectbyid($iduser);
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
                $isi_table .= '<td>'. $d['currency'] .' '. number_format($d['amount_debit'], 0, ",", ".") . '</td>';
                $isi_table .= '<td>' . $d['status'] . '</td>';
                $isi_table .= '<td>' . date('M d, Y', strtotime($d['create_date'])) . '</td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .= $isi_table;
        $isi = json_encode($content);
        // $isi = json_encode($data);
        echo $isi;
    }
    public function actual_detail()
    {
        $iduser = (int)$_POST['id_user'];
        $data = $this->Actual_model->getbybudget($iduser);
        $content =  '';
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['desc'] . '</td>';
                $isi_table .= '<td>' . $d['desc_source'] . '</td>';
                $isi_table .= '<td>' . $d['source'] . '</td>';
                $isi_table .= '<td>'. $d['currency'] .' '. number_format($d['amount_debit'], 0, ",", ".") . '</td>';
                $isi_table .= '<td>'. $d['currency'] .' '. number_format($d['amount_credit'], 0, ",", ".") . '</td>';
                $isi_table .= '<td>' . date('M d, Y', strtotime($d['actual_date'])) . '</td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .= $isi_table;
        $isi = json_encode($content);
        // $isi = json_encode($data);
        echo $isi;
    }
    public function creditactual_detail()
    {
        $iduser = (int)$_POST['id_user'];
        $data = $this->Actual_model->getbybudget($iduser);
        $content =  '';
        $isi_table = '';
        if (empty($data)) {
            $isi_table .= '<tr><td colspan="7">No Record</td></tr>';
        } else {
            $no = 1;
            foreach ($data as $d) :
                $isi_table .= '<tr>';
                $isi_table .= '<td>' . $no . '</td>';
                $isi_table .= '<td>' . $d['desc'] . '</td>';
                $isi_table .= '<td>' . $d['desc_source'] . '</td>';
                $isi_table .= '<td>' . $d['source'] . '</td>';
                $isi_table .= '<td>'. $d['currency'] .' '. number_format($d['debit'], 0, ",", ".") . '</td>';
                $isi_table .= '<td>'. $d['currency'] .' '. number_format($d['amount_debit'], 0, ",", ".") . '</td>';
                $isi_table .= '<td>' . date('M d, Y', strtotime($d['actual_date'])) . '</td>';
                $isi_table .= '</tr>';
                $no++;
            endforeach;
        }
        $content .= $isi_table;
        
        $isi = json_encode($content);
        // $isi = json_encode($data);
        echo $isi;
    }
    public function User()
    {
                    $user = $this->User_model->selectAll();
            $data = [
                'user' => $user
            ];
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/user/data_user', $data);
            $this->load->view('templates/footer');
        
    }
    public function adduser()
    {
        
            $this->form_validation->set_rules('nameuser', 'Nama User', 'required');
            $this->form_validation->set_rules('username', 'Username', 'required|is_unique[tuser.username_user]');
            $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
            $this->form_validation->set_rules('dvn', 'Division', 'required');
            $this->form_validation->set_rules('role', 'Role', 'required');

            $dvn = $this->Division_model->selectAll();
            $role = $this->Roles_model->selectAll();
            $data = [
                'dvn' => $dvn,
                'role' => $role
            ];
            if ($this->form_validation->run() == true) {
                $config['upload_path']          = './fotouser/';
                $config['allowed_types']        = 'gif|jpg|png';
                $config['max_size']             = 1000;

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('fotouser')) {
                    $last = explode("V", $this->User_model->getLastId()["id_user"])[1];
                    $db = [
                        'name_user' => $this->input->post('nameuser'),
                        'username_user' => $this->input->post('username'),
                        'password_user' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                        'id_dvn' => $this->input->post('dvn'),
                        'id_role' => $this->input->post('role'),
                        'fotouser' => $this->upload->data()["file_name"],

                        // 'id_access' =>
                    ];

                    // var_dump($db);die;
                    if ($this->User_model->createuser($db) > 0) {
                        $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                        redirect('admin/user');
                    } else {
                        echo "Failed to create User";
                        die;
                        $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create User'));
                    }

                    // }
                    // redirect('admin/pelanggan/tambahpelanggan');
                } else {
                    $this->session->set_flashdata('message_login', $this->flasher('danger', $this->upload->display_errors()));
                    redirect('admin/user');
                }
            } else {
                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin');
                $this->load->view('admin/user/add_user', $data);
                $this->load->view('templates/footer');
            }
        
    }


    public function edituser($id)
    {
         
            $this->form_validation->set_rules('nameuser', 'Nama User', 'required');
            $this->form_validation->set_rules('username', 'Username', 'required');
            // $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
            $this->form_validation->set_rules('dvn', 'Division', 'required');
            $this->form_validation->set_rules('role', 'Role', 'required');

            $user = $this->User_model->getUserById($id);
            $dvn = $this->Division_model->selectAll();
            $role = $this->Roles_model->selectAll();
            $data = [
                'user' => $user,
                'dvn' => $dvn,
                'role' => $role
            ];
            // if ($id == "") {
            // var_dump($user['id_station']);die;
            if ($this->form_validation->run() == true) {
                $db = [
                    'id_user' => $id,
                    'name_user' => $this->input->post('nameuser'),
                    'username_user' => $this->input->post('username'),
                    // 'password_user' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                    'id_dvn' => $this->input->post('dvn'),
                    'id_role' => $this->input->post('role')
                ];
                if ($_FILES["fotouser"]["name"] != "") {
                    $config['upload_path']          = './fotouser/';
                    $config['allowed_types']        = 'gif|jpg|png';
                    $config['max_size']             = 1000;

                    $this->load->library('upload', $config);
                    if ($this->upload->do_upload('fotouser')) {
                        unlink(FCPATH . 'fotouser/' . $user["fotouser"]);
                        $db['fotouser'] = $this->upload->data()["file_name"];
                    } else {
                        $this->session->set_flashdata('message_login', $this->flasher('danger', $this->upload->display_errors()));
                        var_dump($this->upload->display_errors());
                        die;
                        redirect('admin/edituser/' . $id);
                    }
                }
                // var_dump($db);die;
                if ($this->User_model->update($db) > 0) {
                    $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
                } else {
                    $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
                }
                redirect('admin/user');

                // }
                // redirect('admin/pelanggan/tambahpelanggan');
            } else {
                $this->load->view('templates/header');
                $this->load->view('templates/sidebar_admin');
                $this->load->view('admin/user/edit_user', $data);
                $this->load->view('templates/footer');
            }
        
    }
    public function deleteuser($id)
    {
        if ($id) {
            if ($this->User_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/user');
        // }
    }
    public function dvn()
    {
        $dvn = $this->Division_model->selectAll();
        $data = [
            'dvn' => $dvn
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/division/data_division', $data);
        $this->load->view('templates/footer');
    }
    public function adddvn()
    {
        $this->form_validation->set_rules('dvn', 'Nama Divisi', 'required|is_unique[tdivision.division]');
        $this->form_validation->set_rules('dpt', 'Departement', 'required');
        $this->form_validation->set_rules('cc', 'Cost Center', 'required');
        $this->form_validation->set_rules('lob', 'LOB', 'required');
        $this->form_validation->set_rules('station', 'Station', 'required');

        $cc = $this->Costcen_model->SelectAll();
        $station = $this->Station_model->selectAll();
        $lob = $this->Lob_model->selectAll();
        $dpt = $this->Departement_model->selectAll();
        $data = [
            'dpt' => $dpt,
            'cc' => $cc,
            'station' => $station,
            'lob' => $lob
        ];

        if ($this->form_validation->run() == true) {
            $db = [
                'division' => $this->input->post('dvn'),
                'id_dpt' => $this->input->post('dpt'),
                'id_costcen' => $this->input->post('cc'),
                'id_lob' => $this->input->post('lob'),
                'id_station' => $this->input->post('station'),
                'company' => 1
            ];


            if ($this->Division_model->createdvn($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'Division has been registered!'));
                redirect('admin/dvn');
            } else {
                echo "Failed to create Division";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Division'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Division/add_division', $data);
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editdvn($id)
    {
        
        $this->form_validation->set_rules('dvn', 'Nama Divisi', 'required');
        $this->form_validation->set_rules('dpt', 'Departement', 'required');
        $this->form_validation->set_rules('cc', 'Cost Center', 'required');
        $this->form_validation->set_rules('lob', 'LOB', 'required');
        $this->form_validation->set_rules('station', 'Station', 'required');

        $dvn = $this->Division_model->getdvnById($id);
        $dpt = $this->Departement_model->selectAll();
        $cc = $this->Costcen_model->SelectAll();
        $station = $this->Station_model->selectAll();
        $lob = $this->Lob_model->selectAll();
        $data = [
            'dvn' => $dvn,
            'dpt' => $dpt,
            'cc' => $cc,
            'station' => $station,
            'lob' => $lob

        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_dvn' => $id,
                'division' => $this->input->post('dvn'),
                'id_dpt' => $this->input->post('dpt'),
                'id_costcen' => $this->input->post('cc'),
                'id_lob' => $this->input->post('lob'),
                'id_station' => $this->input->post('station')
            ];
            if ($this->Division_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/dvn');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/division/edit_division', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deletedvn($id)
    {
       
        if ($id) {
            if ($this->Division_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/dvn');
        // }
    }
    public function Dpt()
    {
        $dpt = $this->Departement_model->selectAll();
        $data = [
            'dpt' => $dpt
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/departement/data_dpt', $data);
        $this->load->view('templates/footer');
    }
    public function adddpt()
    {
        
        $this->form_validation->set_rules('departement', 'Nama Departement', 'required|is_unique[tdepartement.name_dpt]');

        if ($this->form_validation->run() == true) {
            $db = [
                'name_dpt' => $this->input->post('departement')

            ];


            if ($this->Departement_model->createdpt($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
                redirect('admin/dpt');
            } else {
                echo "Failed to create User";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create User'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Departement/add_dpt');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editdpt($id)
    {
        
        $this->form_validation->set_rules('namadepartement', 'Nama Departement', 'required');

        $dpt = $this->Departement_model->getDptById($id);
        $data = [
            'dpt' => $dpt

        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_dpt' => $id,
                'name_dpt' => $this->input->post('namadepartement')
            ];
            if ($this->Departement_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/dpt');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/departement/edit_Dpt', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deleteDpt($id)
    {
        
        if ($id) {
            if ($this->Departement_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/dpt');
        // }
    }
    public function Station()
    {
        $station = $this->Station_model->selectAll();
        $data = [
            'station' => $station
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/Station/data_Station', $data);
        $this->load->view('templates/footer');
    }
    public function addStation()
    {
        
        $this->form_validation->set_rules('code', 'Code', 'required|is_unique[tstation.code_station]');
        $this->form_validation->set_rules('station', 'Station Name', 'required|is_unique[tstation.name_station]');

        if ($this->form_validation->run() == true) {
            $db = [
                'code_station' => $this->input->post('code'),
                'name_station' => $this->input->post('station')
            ];

            if ($this->Station_model->createstn($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'station has been registered!'));
                redirect('admin/station');
            } else {
                echo "Failed to create station";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create station'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/station/add_station');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editStation($id)
    {
       
        $this->form_validation->set_rules('code', 'Code', 'required');
        $this->form_validation->set_rules('station', 'Station Name', 'required');

        $station = $this->Station_model->getstnById($id);
        $data = [
            'station' => $station
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_station' => $id,
                'code_station' => $this->input->post('code'),
                'name_station' => $this->input->post('station')
            ];
            if ($this->Station_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/station');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Station/edit_Station', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deleteStation($id)
    {
        if ($id) {
            if ($this->Station_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/Station');
        // }
    }
    public function costcen()
    {
        $costcen = $this->Costcen_model->selectAll();
        $data = [
            'costcen' => $costcen
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/Cost_center/data_costcen', $data);
        $this->load->view('templates/footer');
    }
    public function addcostcen()
    {
        $this->form_validation->set_rules('code', 'Code', 'required|is_unique[tcostcen.code_costcen]');
        $this->form_validation->set_rules('costcen', 'Cost Center', 'required|is_unique[tcostcen.name_costcenter]');

        if ($this->form_validation->run() == true) {
            $db = [
                'code_costcen' => $this->input->post('code'),
                'name_costcenter' => $this->input->post('costcen')
            ];

            if ($this->Costcen_model->createcostcen($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'costcen has been registered!'));
                redirect('admin/costcen');
            } else {
                echo "Failed to create costcen";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create costcen'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Cost_Center/add_costcen');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editCostcen($id)
    {
        $this->form_validation->set_rules('code', 'Code', 'required');
        $this->form_validation->set_rules('costcen', 'Cost Center', 'required');

        $costcen = $this->Costcen_model->getccById($id);
        $data = [
            'costcen' => $costcen
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_costcen' => $id,
                'code_costcen' => $this->input->post('code'),
                'name_costcenter' => $this->input->post('costcen')
            ];
            if ($this->Costcen_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/costcen');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/cost_center/edit_costcen', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deletecostcen($id)
    {
        if ($id) {
            if ($this->Costcen_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/costcen');
        // }
    }
    public function Lob()
    {
        $lob = $this->Lob_model->selectAll();
        $data = [
            'lob' => $lob
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/lob/data_lob', $data);
        $this->load->view('templates/footer');
    }
    public function addlob()
    {
        $this->form_validation->set_rules('lob', 'lob Name', 'required|is_unique[tlob.name_lob]');

        if ($this->form_validation->run() == true) {
            $db = [
                'name_lob' => $this->input->post('lob')
            ];


            if ($this->Lob_model->createlob($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'lob has been registered!'));
                redirect('admin/lob');
            } else {
                echo "Failed to create lob";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create lob'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/lob/add_lob');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editlob($id)
    {
        $this->form_validation->set_rules('lob', 'lob Name', 'required');

        $lob = $this->Lob_model->getlobById($id);
        $data = [
            'lob' => $lob
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_lob' => $id,
                'name_lob' => $this->input->post('lob')
            ];
            if ($this->Lob_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/lob');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/lob/edit_lob', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deletelob($id)
    {
        if ($id) {
            if ($this->Lob_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/lob');
        // }
    }

    public function Roles()
    {
        $roles = $this->Roles_model->selectAll();
        $data = [
            'roles' => $roles
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/roles/data_roles', $data);
        $this->load->view('templates/footer');
    }
    public function addroles()
    {
        $this->form_validation->set_rules('roles', 'roles Name', 'required|is_unique[trole_user.roles]');

        if ($this->form_validation->run() == true) {
            $db = [
                'roles' => $this->input->post('roles')
            ];


            if ($this->Roles_model->createroles($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'lob has been registered!'));
                redirect('admin/roles');
            } else {
                echo "Failed to create roles";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create roles'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/roles/add_roles');
            $this->load->view('templates/footer');
        }
    }
    public function editroles($id)
    {
        $this->form_validation->set_rules('roles', 'roles Name', 'required');

        $roles = $this->Roles_model->getroleById($id);
        $data = [
            'roles' => $roles
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_role' => $id,
                'roles' => $this->input->post('roles')
            ];
            if ($this->Roles_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/roles');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/roles/edit_roles', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deleteroles($id)
    {
        if ($id) {
            if ($this->Roles_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/roles');
    }
    public function Account()
    {
        $acc = $this->Account_model->selectAll();
        $data = [
            'acc' => $acc
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/account/data_account', $data);
        $this->load->view('templates/footer');
    }
    public function addaccount()
    {
        $this->form_validation->set_rules('id', 'ID Account', 'required|is_unique[taccount.id_acc]');
        $this->form_validation->set_rules('acc', 'Remark', 'required|is_unique[taccount.remark_acc]');

        if ($this->form_validation->run() == true) {
            $db = [
                'id_acc' => $this->input->post('id'),
                'remark_acc' => $this->input->post('acc')
            ];


            if ($this->Account_model->createacc($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'account has been registered!'));
                redirect('admin/account');
            } else {
                echo "Failed to create account";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create account'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/account/add_account');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editaccount($id)
    {
        $this->form_validation->set_rules('id', 'ID Account', 'required');
        $this->form_validation->set_rules('acc', 'Remark', 'required');

        $acc = $this->Account_model->getaccById($id);
        $data = [
            'acc' => $acc
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_account' => $id,
                'id_acc' => $this->input->post('id'),
                'remark_acc' => $this->input->post('acc')
            ];
            if ($this->Account_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/account');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/account/edit_account', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deleteaccount($id)
    {
        if ($id) {
            if ($this->Account_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/account');
        // }
    }
    public function Items()
    {
        $item = $this->Items_model->selectAll();
        $data = [
            'item' => $item
        ];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('admin/Items/data_Items', $data);
        $this->load->view('templates/footer');
    }
    public function addItems()
    {
        $this->form_validation->set_rules('name', 'Items Name', 'required|is_unique[tItems.name_items]');
        $this->form_validation->set_rules('info', 'Items Information', 'required');
        $this->form_validation->set_rules('price', 'Items Price', 'required');

        if ($this->form_validation->run() == true) {
            $db = [
                'name_items' => $this->input->post('name'),
                'information_items' => $this->input->post('info'),
                'item_price' => $this->input->post('price')

            ];

            if ($this->Items_model->createitem($db) > 0) {
                $this->session->set_flashdata('message_login', $this->flasher('success', 'Items has been registered!'));
                redirect('admin/Items');
            } else {
                echo "Failed to create Items";
                die;
                $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create Items'));
            }

            // }
            // redirect('admin/pelanggan/tambahpelanggan');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Items/add_Items');
            $this->load->view('templates/footer');
        }
        // }
    }
    public function editItems($id)
    {
        $this->form_validation->set_rules('acc', 'Remark', 'required');

        $acc = $this->Items_model->getaccById($id);
        $data = [
            'acc' => $acc
        ];
        // if ($id == "") {
        if ($this->form_validation->run() == true) {
            $db = [
                'id_item' => $id,
                'remark_acc' => $this->input->post('acc')
            ];
            if ($this->Items_model->update($db) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Edit Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Edit Data'));
            }
            redirect('admin/Items');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar_admin');
            $this->load->view('admin/Items/edit_Items', $data);
            $this->load->view('templates/footer');
        }
        // }
    }

    public function deleteItems($id)
    {
        if ($id) {
            if ($this->Items_model->delete($id) > 0) {
                $this->session->set_flashdata('message', $this->flasher('success', 'Success To Add Data'));
            } else {
                $this->session->set_flashdata('message', $this->flasher('danger', 'Failed To Add Data'));
            }
        } else {
            $this->session->set_flashdata('message', $this->flasher('danger', 'Id Is null'));
        }
        redirect('admin/Items');
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
