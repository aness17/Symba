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

        $_SESSION['login_time'] = time();
    }

    public function index()
    {
        $ci = get_instance();
        $id = $ci->session->userdata('id');
        $ip = $this->input->ip_address();
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
        // echo "TEST WORK !";
        if ($ci->session->userdata('id_role') == '1') {
            redirect('admin');
        } elseif ($ci->session->userdata('id_role') == '2' || $ci->session->userdata('id_role') == '3') {
            redirect('user');
        } else {
            redirect('auth/login');
        }
    }
    function get_client_ip()
    {
        $ipaddress = '';
        if (getenv('HTTP_CLIENT_IP'))
            $ipaddress = getenv('HTTP_CLIENT_IP');
        else if (getenv('HTTP_X_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
        else if (getenv('HTTP_X_FORWARDED'))
            $ipaddress = getenv('HTTP_X_FORWARDED');
        else if (getenv('HTTP_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_FORWARDED_FOR');
        else if (getenv('HTTP_FORWARDED'))
            $ipaddress = getenv('HTTP_FORWARDED');
        else if (getenv('REMOTE_ADDR'))
            $ipaddress = getenv('REMOTE_ADDR');
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
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
                        $ip = $this->get_client_ip();
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
