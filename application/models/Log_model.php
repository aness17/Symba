<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Log_model extends CI_Model
{
    private $table = 'tlog';
    private $primary = 'id_log';

    public function create($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        $this->db->select('B.name_user,B.id_user,A.*');
        $this->db->join('tuser B', 'A.id_user=B.id_user');
        $this->db->order_by('A.date', 'desc');
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getaccById($id)
    {
        $this->db->select('*');
        $this->db->where($this->primary, $id);
        return $this->db->get($this->table)->row_array();
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
