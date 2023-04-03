<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Division_model extends CI_Model
{
    private $table = 'tdivision';
    private $primary = 'id_dvn';

    public function createdvn($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        $this->db->join('tcostcen B', 'A.id_costcen=B.id_costcen');
        $this->db->join('tstation C', 'A.id_station=C.id_station');
        $this->db->join('tlob D', 'A.id_lob=D.id_lob');   
        $this->db->join('tdepartement E', 'A.id_dpt=E.id_dpt');

        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getdvnById($id)
    {
       $this->db->join('tcostcen B', 'A.id_costcen=B.id_costcen');
       $this->db->join('tstation C', 'A.id_station=C.id_station');
       $this->db->join('tlob D', 'A.id_lob=D.id_lob');  
       $this->db->join('tdepartement E', 'A.id_dpt=E.id_dpt');

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