<?php
defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

require APPPATH . "libraries/format.php";
require APPPATH . "libraries/RestController.php";
class Symba extends RestController
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

    public function index_get()
    {
        $id = $this->get('id');
        if ($id == NULL) {
            $symba = $this->User_model->getUsers();
        } else {
            $symba = $this->User_model->getUsers($id);
        }

        if ($symba) {
            $this->response([
                'status' => true,
                'data' => $symba
            ], RestController::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'id not found'
            ], RestController::HTTP_OK);
        }
        // $this->response($symba, RestController::HTTP_OK);
    }
}
