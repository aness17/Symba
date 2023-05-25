

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Budget Data</h6>
                <div>
                    <a href="<?= base_url('budget/databudget') ?>" class="btn btn-info">Back</a>
                    <a href="<?= base_url('budget/addbudget/' . $id)?>" class="btn btn-primary">Add Data</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable7" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Description source of module</th>
                            <th>Description</th>
                            <!-- <th>Currency</th> -->
                            <th>Budget Amount</th>
                            <th>Remaining Balance</th>
                            <!-- <th>Date</th> -->
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($sisa as $bg) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                <td><?= $bg['name_user'] ?> [<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]</td>
                                <td><?= $bg['desc_source'] ?></td>
                                <td><?= $bg['description'] ?></td>
                                <!-- <td><?= $bg['category'] ?></td> -->
                                <!-- <td><?= $bg['currency'] ?></td> -->
                                <td><?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?> </td>
                                <td><?= number_format($bg['amount_debit']-$bg['debit']+$bg['credit'], 0, ",", ".") ?> <?= $bg['currency'] ?> </td>
                                <!-- <td><?= number_format($bg['amount_credit'], 0, ",", "."); ?></td> -->
                                <!-- <td><?= $bg['create_date']; ?></td> -->
                                <td><?= $bg['status']?></td>    
                                <td class="text-center">
                                    <a href="<?= base_url('budget/editbudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('budget/deleteheaderbudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
                                    </a>
                                    <hr>
                                    <a href="<?= base_url('budget/detailbudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-binoculars" style="color:blue">
                                    </a>
                                </td>
                            </tr>
                            <?php $no++;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
        
    </div>
</div>

            <!-- End of Main Content -->