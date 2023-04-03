<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Items_model extends CI_Model
{
    private $table = 'titems';
    private $primary = 'id_item';

    public function createitem($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        return $this->db->get($this->table)->result_array();
    }
    public function getitemById($id)
    {
        $this->db->select('*');
        $this->db->from('titems');
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