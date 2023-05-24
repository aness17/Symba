<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Actual_model extends CI_Model
{
    private $table = 'tactual';
    private $primary = 'id_actual';

    public function create($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function Actualperbulan($id,$thn){
        // SELECT concat(month(actual_date)," - ",year(actual_date)) as Bulan, sum(tactual.amount_debit)-sum(tactual.amount_credit) as jumlah  
        // FROM `tactual` JOIN tdetail_budget ON tdetail_budget.id_budget = tactual.id_budget WHERE tdetail_budget.id_user = 4 
        // GROUP BY month(actual_date)
        $this->db->select('sum(A.amount_debit)-sum(A.amount_credit) as jumlah');
        $this->db->join('tdetail_budget B', 'A.id_budget = B.id_budget');
        $this->db->where('B.id_user',$id);
        $this->db->where('B.budget_year',$thn);
        $this->db->group_by('month(actual_date)');
        return $this->db->get($this->table . " as A")->result_array();
    }

    public function selectAll()
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account');

        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getactById($id)
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*');        
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account'); 

        $this->db->where('A.id_actual', $id);
        return $this->db->get($this->table . " as A")->row_array();
    }
    public function useractById($id,$thn)
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account');    
        $this->db->where('G.id_user', $id);
        $this->db->where('A.actual_date like','%'.date('Y').'%');
        $this->db->where('E.budget_year',$thn);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function update($data)
    {
        $this->db->where($this->primary, $data[$this->primary]);
        return $this->db->update($this->table, $data);
    }
    public function totalcr($thn){
        $this->db->select_sum('A.amount_credit');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->where('E.budget_year',$thn);
        return $this->db->get($this->table . " as A")->result();
    }
    public function totaldr($thn){
        $this->db->select_sum('A.amount_debit');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->where('E.budget_year',$thn);
        return $this->db->get($this->table . " as A")->result();
    }
    public function delete($id)
    {
        $this->db->where($this->primary, $id);
        return $this->db->delete($this->table);
    }
    public function sumcredit($id,$thn){
        $this->db->select_sum('A.amount_credit');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->where('G.id_user',$id);
        $this->db->where('A.actual_date like','%'.date('Y').'%');
        $this->db->where('E.budget_year',$thn);
        return $this->db->get($this->table . " as A")->result();
    }
    public function sumdebit($id,$thn){
        $this->db->select_sum('A.amount_debit');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->where('G.id_user',$id);
        $this->db->where('A.actual_date like','%'.date('Y').'%');
        $this->db->where('E.budget_year',$thn);
        return $this->db->get($this->table . " as A")->result();
    }
    public function summary($thn){
        return $this->db->query('SELECT tdetail_budget.currency bd,tactual.currency cr,tdivision.division,tstation.code_station,tdetail_budget.id_user,
        tdetail_budget.id_budget,debit_budget,credit_budget,SUM(tactual.amount_debit) debit_actual, SUM(tactual.amount_credit) credit_actual 
        FROM `tactual` RIGHT JOIN `tdetail_budget` on tdetail_budget.id_budget = tactual.id_budget JOIN (SELECT tdetail_budget.currency,tdetail_budget.id_user,
        SUM(tdetail_budget.amount_debit) debit_budget,SUM(tdetail_budget.amount_credit)credit_budget FROM tdetail_budget JOIN tuser 
        ON tuser.id_user = tdetail_budget.id_user WHERE tdetail_budget.budget_year = '.$thn.' GROUP BY tdetail_budget.id_user) tbl_budget_user ON tbl_budget_user.id_user = tdetail_budget.id_user 
        JOIN `tuser` ON tuser.id_user = tdetail_budget.id_user JOIN `tdivision` on tdivision.id_dvn = tuser.id_dvn JOIN `tstation` 
        ON tstation.id_station = tdivision.id_station WHERE tdetail_budget.budget_year = '.$thn.' GROUP BY tdetail_budget.id_user ORDER BY tstation.code_station')->result_array();
        // return $this->db->query('select tdivision.division,sum(tdetail_budget.amount_debit) debitbgt, sum(a.amount_debit) as debit ,SUM(a.amount_credit) as credit,sum(tdetail_budget.amount_debit)debitbgt from tactual a RIGHT join tdetail_budget on a.id_budget = tdetail_budget.id_budget join tuser ON tuser.id_user = tdetail_budget.id_user join tdivision on tdivision.id_dvn = tuser.id_dvn GROUP BY tuser.id_user')->result_array();
    }
    public function getactdetail($id,$iduser)
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*');        
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account'); 
        $this->db->where('E.id_user',$iduser);
        $this->db->where('A.id_budget', $id);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getactdetail_budget($id)
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*');        
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account'); 
        $this->db->where('A.id_budget', $id);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function getbybudget($id,$tahun)
    {
        $this->db->select('G.name_user,H.id_acc,C.code_costcen,D.code_station,B.company,B.division, D.name_station,A.*,E.desc_source as desc,E.amount_debit as debit');
        $this->db->join('tdetail_budget E', 'A.id_budget = E.id_budget');
        $this->db->join('tuser G', 'E.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount H', 'E.id_account = H.id_account'); 
        $this->db->where('E.id_user', $id);
        $this->db->where('E.budget_year', $tahun);
        $this->db->where('A.actual_date like','%'.date('Y').'%');
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function sumcreditt($id){
        $this->db->select_sum('amount_credit');
        $this->db->where('id_budget',$id);
        return $this->db->get($this->table . " as A")->result();
    }
    public function sumdebitt($id){
        $this->db->select_sum('amount_debit');
        $this->db->where('id_budget',$id);
        return $this->db->get($this->table . " as A")->result();
    }
    public function sumcredittuser($id,$iduser){
        $this->db->select_sum('A.amount_credit');
        $this->db->join('tdetail_budget B', 'A.id_budget = B.id_budget');
        $this->db->join('tuser C', 'B.id_user = C.id_user');
        $this->db->where('A.id_budget',$id);
        $this->db->where('B.id_user',$iduser);
        return $this->db->get($this->table . " as A")->result();
    }
    public function sumdebittuser($id,$iduser){
        $this->db->select_sum('A.amount_debit');
        $this->db->join('tdetail_budget B', 'A.id_budget = B.id_budget');
        $this->db->join('tuser C', 'B.id_user = C.id_user');
        $this->db->where('A.id_budget',$id);
        $this->db->where('B.id_user',$iduser);
        return $this->db->get($this->table . " as A")->result();
    }
}