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
    public function selectbudgettahun($thn)
    {
        // $this->db->select('sum(');
        // $this->db->join('tdetail_budget H', 'A.id_bdgt = H.id_bdgt');
        // $this->db->join('tactual I', 'H.id_budget = I.id_budget');
        // $this->db->join('tuser G', 'A.id_user = G.id_user');
        // $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        // $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        // $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        // $this->db->join('tstation D', 'B.id_station=D.id_station');
        // $this->db->join('taccount E', 'A.id_acc = E.id_account');
        // $this->db->where('A.periode_year',$thn);
        return $this->db->query("SELECT A.*,B.*,C.*,D.*,E.*,tbl_actual_user.*,G.*,A.id_bdgt as id_primary FROM `tbudget` as `A` LEFT JOIN 
        (SELECT tdetail_budget.id_bdgt,tdetail_budget.status, SUM(tactual.amount_debit) debit_actual,SUM(tactual.amount_credit)credit_actual 
        FROM tdetail_budget 
        JOIN tactual ON tactual.id_budget = tdetail_budget.id_budget 
        GROUP BY tdetail_budget.id_bdgt) tbl_actual_user ON tbl_actual_user.id_bdgt = A.id_bdgt 
        JOIN `tuser` `G` ON `A`.`id_user` = `G`.`id_user` 
        JOIN `tdivision` `B` ON `G`.`id_dvn` = `B`.`id_dvn` JOIN `tdepartement` `F` ON `B`.`id_dpt`=`F`.`id_dpt` 
        JOIN `tcostcen` `C` ON `B`.`id_costcen`=`C`.`id_costcen` JOIN `tstation` `D` ON `B`.`id_station`=`D`.`id_station` 
        JOIN `taccount` `E` ON `A`.`id_acc` = `E`.`id_account` WHERE `A`.`periode_year` = $thn 
        ORDER BY `tbl_actual_user`.`status`, G.id_user")->result_array();
        //return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectbudgetuser($id, $thn)
    {
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_acc = E.id_account');
        $this->db->where('A.id_user', $id);
        $this->db->where('H.periode_year', $thn);

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
        $this->db->where('A.id_bdgt', $id);
        return $this->db->get($this->table . " as A")->row_array();
    }
    public function selectheader($id)
    {
        $this->db->select('total_budget');
        $this->db->where('id_bdgt', $id);
        return $this->db->get($this->table)->row_array();
    }
    public function update($data)
    {
        $this->db->where($this->primary, $data[$this->primary]);
        return $this->db->update($this->table, $data);
    }
    public function findheader($id, $account, $periode)
    {
        $this->db->join('taccount B', 'A.id_acc = B.id_account');
        $this->db->where('A.id_user', $id);
        $this->db->where('A.id_acc', $account);
        $this->db->where('A.periode_year', $periode);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function tahun()
    {
        $this->db->select('periode_year as tahun');
        $this->db->group_by('tahun');
        return $this->db->get($this->table)->result_array();
    }
}
