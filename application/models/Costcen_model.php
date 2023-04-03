<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Costcen_model extends CI_Model
{
    private $table = 'tcostcen';
    private $primary = 'id_costcen';

    public function createcostcen($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {

        return $this->db->get($this->table)->result_array();
    }
    public function getccById($id)
    {
        $this->db->select('*');
        $this->db->from('tcostcen');
        $this->db->where($this->primary, $id);
        return $this->db->get()->row_array();
    }
    public function update($data)
    {
        $this->db->where($this->primary, $data[$this->primary]);
        return $this->db->update($this->table, $data);
    }
    public function delete($id)
    {
        $this->db->where($this->primary, $id);
        return $this->db->delete($this->table);
    }
}