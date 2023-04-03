<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Departement_model extends CI_Model
{
    private $table = 'tdepartement';
    private $primary = 'id_dpt';

    public function createdpt($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
       return $this->db->get($this->table . " as A")->result_array();
   }
   public function getDptById($id)
   {

     $this->db->where($this->primary, $id);
     return $this->db->get($this->table . " as A")->row_array();
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