<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_model extends CI_Model
{
    private $table = 'pelanggan';
    private $primary = 'id_pelanggan';

    public function selectAll()
    {
        $this->db->join('roles B', 'A.fk_role=B.id_role');
        $this->db->order_by('id_pelanggan', 'ASC');

        return $this->db->get($this->table . " as A")->result_array();
    }
}