<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Travelda_model extends CI_Model
{
    private $table = 'ttravel_da';
    private $primary = 'id_travelda';

    public function create($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        return $this->db->get($this->table)->result_array();
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
    public function getaccById($id)
    {
        $this->db->where($this->primary, $id);
        return $this->db->get($this->table)->row_array();
    }
    public function getidbygrade($grade, $periode)
    {
        // $this->db->select('id_travelda');
        $this->db->where('grade', $grade);
        $this->db->where('periode_year', $periode);
        return $this->db->get($this->table)->row_array();
    }
    public function tahun()
    {
        $this->db->select('periode_year as tahun');
        $this->db->group_by('tahun');
        return $this->db->get($this->table)->result_array();
    }
}
