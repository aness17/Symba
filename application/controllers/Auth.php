<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
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
        $this->load->model('Log_model');
    }

    public function index()
    {
        // echo "TEST WORK !";
        $ci = get_instance();
        if ($ci->session->userdata('id_role') == '1') {
            redirect('admin');
        } elseif ($ci->session->userdata('id_role') == '2' || $ci->session->userdata('id_role') == '3') {
            redirect('user');
        } else {
            redirect('auth/login');
        }
    }

    public function login()
    {
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
                        $ip = $this->input->ip_address();
                        $data = [
                            'id_user' => $user['id_user'],
                            'remarks' => 'Login ke dalam system',
                            'ip_add' => $ip
                        ];
                        // var_dump($data);die;
                        $this->Log_model->create($data);
                        echo "<script>location.href='" . base_url('admin') . "';alert('Anda Berhasil Masuk Sebagai Admin');</script>";
                    } else if ($user['id_role'] != '1') {
                        $ip = $this->input->ip_address();
                        $data = [
                            'id_user' => $user['id_user'],
                            'remarks' => 'Login ke dalam system',
                            'ip_add' => $ip
                        ];
                        // var_dump($data);die;
                        $this->Log_model->create($data);
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
            $this->load->view('index');
        }
    }

    // public function register()
    // {
    //     $this->form_validation->set_rules('nama', 'Nama', 'required');
    //     $this->form_validation->set_rules('username', 'Username', 'required|is_unique[pelanggan.username_pelanggan]');
    //     $this->form_validation->set_rules('passwd', 'Password', 'required|min_length[6]');


    //     if ($this->form_validation->run()) {
    //         // $email = $this->input->post('email');
    //         // $pos = strpos($email, "@gmail.com") ? "ada" : "tidak ada";
    //         // if ($pos == "tidak ada") {
    //         //     echo "<script>alert('harus gugel bund');history.go(-1);</script>";
    //         //     $this->session->set_flashdata('message_login', $this->flasher('danger', 'HARUS AKUN GUGEL'));
    //         // } else {
    //         $db = [
    //             'nama_pelanggan' => $this->input->post('nama'),
    //             'username_pelanggan' => $this->input->post('username'),
    //             'password_pelanggan' => password_hash($this->input->post('passwd'), PASSWORD_DEFAULT),
    //             'fk_role' => '3'
    //         ];
    //         // var_dump($db);
    //         // die;
    //         if ($this->User_model->createpelanggan($db) > 0) {
    //             $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been registered!'));
    //             echo "<script>location.href='" . base_url('auth/login') . "';alert('Daftar Berhasil');</script>";
    //         } else {
    //             $this->session->set_flashdata('message_login', $this->flasher('danger', 'Failed to create User'));
    //         }
    //     } else {
    //         $this->load->view('auth/register');
    //         // echo "<script>location.href='" . base_url('login/formregister') . "';alert('Anda gagal Registrasi');</script>";
    //     }
    // }

    public function logout()
    {
        $ci = get_instance();

        $id = $ci->session->userdata('id');
        $ip = $this->input->ip_address();
        // var_dump($user);die;
        $data = [
            'id_user' => $id,
            'remarks' => 'Logout dari system',
            'ip_add' => $ip
        ];
        // var_dump($data);die;
        $this->Log_model->create($data);
        $this->session->set_flashdata('message_login', $this->flasher('success', 'User has been logged out'));
        $this->session->unset_userdata('id_user');
        $this->session->unset_userdata('id_role');
        $this->session->unset_userdata('name_user');
        $this->session->unset_userdata('id_dvn');
        $this->session->unset_userdata('fotouser');
        $this->session->unset_userdata('username_user');
        $this->session->unset_userdata('password_user');
        echo "<script>alert('Anda Telah Keluar');</script>";
        redirect('auth/');
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
