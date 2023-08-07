<?php
defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

require APPPATH . "libraries/format.php";
require APPPATH . "libraries/RestController.php";
class User_api extends RestController
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
        $this->load->model('User_model', 'user');
        $this->load->model('Division_model', 'dvn');
        $this->load->model('Roles_model', 'role');
        $this->load->model('Log_model');

        // $this->methods['index_get']['limit'] = 15;
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id == NULL) {
            $symba = $this->user->getUsers();
        } else {
            $symba = $this->user->getUsers($id);
        }
        if ($symba) {
            return $this->response([
                'status' => true,
                'data' => $symba
            ], RestController::HTTP_OK);
        } else {
            return $this->response([
                'status' => false,
                'message' => 'id not found'
            ], RestController::HTTP_BAD_REQUEST);
        }
        // $this->response($symba, RestController::HTTP_OK);
    }
    public function index_delete()
    {
        $id = $this->delete('id');
        // var_dump($id);
        // die;
        if ($id === NULL) {
            $this->response([
                'status' => false,
                'message' => 'provide and id'
            ], RestController::HTTP_BAD_REQUEST);
        } else {
            if ($this->user->delete($id) > 0) {
                $this->response([
                    'status' => true,
                    'id' => $id,
                    'message' => 'ID has been deleted'
                ], RestController::HTTP_OK);
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'id not found'
                ], RestController::HTTP_BAD_REQUEST);
            }
        }
        // $this->response($symba, RestController::HTTP_OK);
    }
    public function index_post()
    {
        if (isset($_FILES["fotouser"]["name"])) {
            $config['upload_path']          = './fotouser/';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 1000;
            $this->load->library('upload', $config);

            if ($this->upload->do_upload('fotouser')) {
                $db = [
                    'name_user' => $this->post('nameuser'),
                    'username_user' => $this->post('username'),
                    'password_user' => password_hash($this->post('password'), PASSWORD_DEFAULT),
                    'id_dvn' => $this->post('dvn'),
                    'id_role' => $this->post('role'),
                    'fotouser' => $this->upload->data()["file_name"],
                ];
                // var_dump($db);
                // die;
                if ($this->user->createuser($db) > 0) {
                    $this->response([
                        'status' => true,
                        'msg' => 'User has been created'
                    ], RestController::HTTP_CREATED);
                } else {
                    $this->response([
                        'status' => false,
                        'msg' => 'Failed to create new users'
                    ], RestController::HTTP_BAD_REQUEST);
                }
            } else {
                $this->response([
                    'status' => false,
                    'msg' => 'Failed to Upload User Photo'
                ], RestController::HTTP_BAD_REQUEST);
            }
        }
    }
    public function index_put()
    {
        $id = $this->put('id');

        $data = [
            'id_user' => $id,
            'name_user' => $this->put('name_user'),
            'username_user' => $this->put('username_user'),
            // 'password_user' => password_hash($this->put('password_user'), PASSWORD_DEFAULT),
            'id_dvn' => $this->post('dvn'),
            'id_role' => $this->post('role'),
            // 'fotouser' => $this->upload->data()["file_name"],
        ];
        if ($_FILES["fotouser"]["name"] != "") {
            $config['upload_path']          = './fotouser/';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 1000;

            $this->load->library('upload', $config);
            if ($this->upload->do_upload('fotouser')) {
                unlink(FCPATH . 'fotouser/' . $data["fotouser"]);
                $db['fotouser'] = $this->upload->data()["file_name"];
            } else {
                var_dump($this->upload->display_errors());
                die;
                redirect('admin/edituser/' . $id);
            }
        }
        if ($this->user->update($data) > 0) {
            $this->response([
                'status' => true,
                'message' => 'User has been update'
            ], RestController::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Failed to update new users'
            ], RestController::HTTP_BAD_REQUEST);
        }
    }
}
