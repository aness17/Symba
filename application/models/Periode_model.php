<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Periode_model extends CI_Model
{
    private $table = 'tperiode';
    private $primary = 'id_periode';

    public function create($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        return $this->db->get($this->table)->result_array();
    }
    public function getWhere($id)
    {
        $this->db->where($this->primary, $id);
        return $this->db->get($this->table)->row_array();
    }
    public function update($data)
    {
        $this->db->where($this->primary, $data[$this->primary]);
        return $this->db->update($this->table, $data);
    }
    public function getPeriode()
    {
        $this->db->where('periode_year', date('Y') + 1);
        return $this->db->get($this->table)->row_array();
    }
    public function delete($id)
    {
        $this->db->where($this->primary, $id);
        return $this->db->delete($this->table);
    }
}
