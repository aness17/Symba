<?php
defined('BASEPATH') or exit('No direct script access allowed');

class DetailBudget_model extends CI_Model
{
    private $table = 'tdetail_budget';
    private $primary = 'id_budget';

    public function create($data)
    {
        $this->db->insert($this->table, $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
        // return $this->db->insert($this->table, $data);
    }

    public function selectbudget($id)
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->where('A.id_bdgt', $id);
        $this->db->where('A.budget_year', date('Y'));
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function deletebudget($id)
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->join('tbudget H', 'A.id_bdgt = H.id_bdgt');
        $this->db->where('A.id_budget', $id);
        return $this->db->get($this->table . " as A")->row_array();
    }
    public function selectiddetail($id)
    {
        $this->db->select('id_bdgt');
        $this->db->where('id_budget', $id);
        return $this->db->get($this->table)->row_array();
    }
    public function selectAll()
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->where('A.budget_year', date('Y'));
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectAllbyyear($thn)
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->where('A.budget_year', $thn);
        $this->db->order_by('A.id_account ASC,G.id_user ASC');
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function sisabudget($id)
    {
        return $this->db->query('SELECT taccount.id_acc,tcostcen.code_costcen,tstation.*,tdivision.*,tuser.name_user,SUM(tactual.amount_debit) debit, SUM(tactual.amount_credit) credit,tdetail_budget.* FROM `tdetail_budget`
            LEFT JOIN tactual ON tactual.id_budget = tdetail_budget.id_budget
            join tuser on tuser.id_user  = tdetail_budget.id_user  
            join tdivision  on tdivision.id_dvn = tuser.id_dvn
            join taccount   on taccount.id_account  = tdetail_budget.id_account
            join tcostcen on tcostcen.id_costcen = tdivision.id_costcen        
            join tstation   on tstation.id_station  = tdivision.id_station
            WHERE tdetail_budget.id_bdgt = ' . $id . '      
            GROUP BY tdetail_budget.id_budget')->result_array();
    }
    public function sisabudgetusermodal($id, $iduser)
    {
        return $this->db->query('SELECT taccount.id_acc,tcostcen.code_costcen,tstation.*,tdivision.*,tuser.name_user,SUM(tactual.amount_debit) debit, SUM(tactual.amount_credit) credit,tdetail_budget.* FROM `tdetail_budget`
            LEFT JOIN tactual ON tactual.id_budget = tdetail_budget.id_budget
            join tuser on tuser.id_user  = tdetail_budget.id_user  
            join tdivision  on tdivision.id_dvn = tuser.id_dvn
            join taccount   on taccount.id_account  = tdetail_budget.id_account
            join tcostcen on tcostcen.id_costcen = tdivision.id_costcen        
            join tstation   on tstation.id_station  = tdivision.id_station
            WHERE tdetail_budget.id_bdgt = ' . $id . '
            AND tdetail_budget.id_user  = ' . $iduser . '     
            GROUP BY tdetail_budget.id_budget')->result_array();
    }
    public function sisabudgett($id)
    {
        return $this->db->query('SELECT taccount.id_acc,tcostcen.code_costcen,tstation.*,tdivision.*,tuser.name_user,SUM(tactual.amount_debit) debit, SUM(tactual.amount_credit) credit,tdetail_budget.* FROM `tdetail_budget`
            LEFT JOIN tactual ON tactual.id_budget = tdetail_budget.id_budget
            join tuser on tuser.id_user  = tdetail_budget.id_user  
            join tdivision  on tdivision.id_dvn = tuser.id_dvn
            join taccount   on taccount.id_account  = tdetail_budget.id_account
            join tcostcen on tcostcen.id_costcen = tdivision.id_costcen        
            join tstation   on tstation.id_station  = tdivision.id_station      
            where tdetail_budget.id_budget = ' . $id   . '   
            GROUP BY tdetail_budget.id_budget')->row_array();
    }
    public function sisabudgetuser($id, $thn, $cat)
    {
        return $this->db->query("SELECT taccount.id_acc,tcostcen.code_costcen,tstation.*,tdivision.*,tuser.name_user,SUM(tactual.amount_debit) debit, SUM(tactual.amount_credit) credit,tdetail_budget.* FROM `tdetail_budget`
            LEFT JOIN tactual ON tactual.id_budget = tdetail_budget.id_budget
            join tuser on tuser.id_user  = tdetail_budget.id_user  
            join tdivision  on tdivision.id_dvn = tuser.id_dvn
            join taccount   on taccount.id_account  = tdetail_budget.id_account
            join tcostcen on tcostcen.id_costcen = tdivision.id_costcen        
            join tstation   on tstation.id_station  = tdivision.id_station
            where tdetail_budget.id_user = $id and
             tdetail_budget.budget_year = $thn and
             tdetail_budget.category_budget = '$cat'
            GROUP BY tdetail_budget.id_budget")->result_array();
    }

    public function selectbyId($id, $thn, $category)
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->where('G.id_user', $id);
        $this->db->where('A.budget_year', $thn);
        $this->db->where('A.category_budget', $category);
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function selectbyIduser($id, $thn)
    {
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
        $this->db->where('G.id_user', $id);
        $this->db->where('A.budget_year', $thn);
        // $this->db->where('A.category_budget', $category);
        return $this->db->get($this->table . " as A")->result_array();
    }

    public function getbgById($id)
    {
        // $this->db->select('*');
        $this->db->join('tuser G', 'A.id_user = G.id_user');
        $this->db->join('tdivision B', 'G.id_dvn = B.id_dvn');
        $this->db->join('tdepartement F', 'B.id_dpt=F.id_dpt');
        $this->db->join('tcostcen C', 'B.id_costcen=C.id_costcen');
        $this->db->join('tstation D', 'B.id_station=D.id_station');
        $this->db->join('taccount E', 'A.id_account = E.id_account');
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
    // public function sumpengajuan($id){

    //     $this->db->where('id_user',$id);
    //     return $this->db->get($this->table)->result();
    // }
    public function sumcredit($id, $thn)
    {
        $this->db->select_sum('amount_credit');
        $this->db->where('id_user', $id);
        $this->db->where('A.budget_year', $thn);

        return $this->db->get($this->table . " as A")->result();
    }
    public function sumdebit($id, $thn)
    {
        $this->db->select_sum('amount_debit');
        $this->db->where('id_user', $id);
        $this->db->where('A.budget_year', $thn);

        return $this->db->get($this->table . " as A")->result();
    }

    public function totalcr($thn)
    {
        $this->db->select_sum('amount_credit');
        $this->db->where('A.budget_year', $thn);

        return $this->db->get($this->table . " as A")->result();
    }
    public function totaldr($thn)
    {
        $this->db->select_sum('amount_debit');
        $this->db->where('A.budget_year', $thn);

        return $this->db->get($this->table . " as A")->result();
    }
    public function updatestatus($data, $id)
    {
        $this->db->where('id_budget', $id);
        return $this->db->update($this->table, $data);
    }
    public function summary()
    {
        $this->db->select('sum(A.amount_debit) as debit,A.id_user,A.status,B.division');
        $this->db->join('tuser C', 'A.id_user = C.id_user');
        $this->db->join('tdivision B', 'C.id_dvn = B.id_dvn');
        $this->db->group_by('A.id_user');
        return $this->db->get($this->table . " as A")->result_array();
    }
    public function tahun()
    {
        $this->db->select('budget_year as tahun');
        $this->db->group_by('tahun');
        return $this->db->get($this->table)->result_array();
    }
}
