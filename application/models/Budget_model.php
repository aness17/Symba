<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Budget_model extends CI_Model
{
    private $table = 'tbudget';
    private $primary = 'id_bdgt';

    public function create($data)
    {
        $this->db->insert($this->table, $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    public function selectAll()
    {
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_acc = E.id_account');
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectbudgetuser($id,$thn)
    {
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_acc = E.id_account');
        $this->db->where('A.id_user',$id);
        $this->db->where('H.periode_year',$thn);

        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getLastId()
    {
        $this->db->select_max('id_bdgt');
        return $this->db->get($this->table)->row_array();
    }
    public function selectuser($id)
    {
        $this->db->select('A.id_acc as acc,A.id_user as user,A.*,G.*,B.*,F.*,C.*,D.*,E.*');
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_acc = E.id_account');
        $this->db->where('A.id_bdgt',$id);
        return $this->db->get($this->table . " as A")->row_array();
    }
    public function selectheader($id){
        $this->db->select('total_budget');
        $this->db->where('id_bdgt',$id);
        return $this->db->get($this->table)->row_array();
    }
    public function update($data)
    {
        $this->db->where($this->primary, $data[$this->primary]);
        return $this->db->update($this->table, $data);
    }
    public function findheader($id,$account,$periode){
        $this->db->join('taccount B', 'A.id_acc = B.id_account');
        $this->db->where('A.id_user',$id);
        $this->db->where('A.id_acc',$account);
        $this->db->where('A.periode_year',$periode);
        return $this->db->get($this->table. " as A")->result_array();
    }
}