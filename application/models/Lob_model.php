<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lob_model extends CI_Model
{
    private $table = 'tlob';
    private $primary = 'id_lob';

    public function createlob($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {

        return $this->db->get($this->table)->result_array();
    }
    public function getlobById($id)
    {
        $this->db->select('*');
        $this->db->from('tlob');
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