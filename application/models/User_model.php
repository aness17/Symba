<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User_model extends CI_Model
{
    private $table = 'tuser';
    private $primary = 'id_user';

    public function createuser($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function selectAll()
    {
        $this->db->join('tdivision B', 'A.id_dvn=B.id_dvn');
        $this->db->join('tdepartement G', 'B.id_dpt=G.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('tlob E', 'B.id_lob=E.id_lob');
        $this->db->join('trole_user F', 'A.id_role=F.id_role');
        $this->db->where('A.id_role !=', 1);
        $this->db->order_by('id_user', 'ASC');

        return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectUser($id)
    {
        $this->db->select('A.name_user,G.name_dpt,C.name_costcenter,D.name_station,E.name_lob,B.division,A.fotouser,A.id_role');
        $this->db->join('tdivision B', 'A.id_dvn=B.id_dvn');
        $this->db->join('tdepartement G', 'B.id_dpt=G.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('tlob E', 'B.id_lob=E.id_lob');
        $this->db->join('trole_user F', 'A.id_role=F.id_role');
        $this->db->where('id_user', $id);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectdpt($id)
    {
        $this->db->select('B.division');
        $this->db->join('tdivision B', 'A.id_dvn=B.id_dvn');
        $this->db->join('tdepartement G', 'B.id_dpt=G.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('tlob E', 'B.id_lob=E.id_lob');
        $this->db->join('trole_user F', 'A.id_role=F.id_role');
        $this->db->where('id_user', $id);
        return $this->db->get($this->table . " as A")->result();
    }
    public function getUserById($id)
    {
        $this->db->select('A.*,B.division,C.name_costcenter,D.name_station,E.name_lob,F.roles');
        $this->db->join('tdivision B', 'A.id_dvn=B.id_dvn');
        $this->db->join('tdepartement G', 'B.id_dpt=G.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('tlob E', 'B.id_lob=E.id_lob');
        $this->db->join('trole_user F', 'A.id_role=F.id_role');
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
    public function getLastId()
    {
        $this->db->select_max('id_user');
        return $this->db->get($this->table)->row_array();
    }
    public function getUser($id)
    {
        $this->db->select('A.*,B.division,C.name_costcenter,D.name_station,E.name_lob,F.roles');
        $this->db->join('tdivision B', 'A.id_dvn=B.id_dvn');
        $this->db->join('tdepartement G', 'B.id_dpt=G.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('tlob E', 'B.id_lob=E.id_lob');
        $this->db->join('trole_user F', 'A.id_role=F.id_role');
        $this->db->where($this->primary, $id);
        return $this->db->get($this->table . " as A")->row_array();
    }
}
