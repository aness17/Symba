<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Budget Data</h6>
                <a href="<?= base_url('budget/datadetailbudget/' . $id) ?>" class="btn btn-info">Back</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Program</th>
                            <th>Remarks</th>
                            <!-- <th>Source</th> -->
                            <!-- <th>Currency</th> -->
                            <th>Total Amount</th>
                            <th>Remaining Balance</th>
                            <th>Date</th>
                            <th>Status</th>
                            <!-- <th>Aksi</th> -->
                        </tr>
                    </thead>
                    <tbody class="list">
                        <tr style="text-align: center;">
                            <!-- <td><?= $no; ?></td> -->
                            <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                            <td><?= $bg['name_user'] ?> [<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]</td>
                            <td><?= str_replace('#', ' ', $bg['program']) ?></td>
                            <td><?= str_replace('#', ' ', $bg['desc_source']) ?></td>
                            <!-- <td><?= $bg['source'] ?></td> -->
                            <!-- <td><?= $bg['category'] ?></td> -->
                            <!-- <td><?= $bg['currency'] ?></td> -->
                            <td><?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?> </td>
                            <td><?= number_format($bg['amount_debit'] - $bg['debit'] + $bg['credit'], 0, ",", ".") ?> <?= $bg['currency'] ?> </td>
                            <!-- <td><?= number_format($bg['amount_credit'], 0, ",", "."); ?></td> -->
                            <td><?= $bg['budget_date']; ?></td>
                            <td><?= $bg['status'] ?></td>
                            <!-- <td class="text-center">
                                    <a href="<?= base_url('budget/editbudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('budget/deletebudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
                                    </a>
                                    <hr>
                                    
                                    <a href="<?= base_url('budget/detailbudget/' . $bg['id_budget']) ?>" type="button" class="fa fa-eye" style="color:blue">
                                    </a>
                                </td> -->
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Detail Actual Data</h6>
                <a href="<?= base_url('actual/addactual/' . $bg['id_budget']) ?>" class="btn btn-primary">Add Data</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <h4><span class="badge badge-primary"><b>Total Transaction : <?= number_format($totaltx, 0, ",", "."); ?> IDR </b></span></h4>
                <table class="table table-bordered" id="dataTable7" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Description source of module</th>
                            <!-- <th>Source</th> -->
                            <th>Category</th>
                            <!-- <th>Currency</th> -->
                            <th>Accounted DR Amount</th>
                            <th>Accounted CR Amount</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($actdetail as $actual) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $actual['id_acc'] ?>.<?= $actual['subacc'] ?>.<?= $actual['product'] ?>.<?= $actual['code_costcen'] ?>.<?= $actual['code_station'] ?>.<?= $actual['company'] ?></td>
                                <td><?= $actual['name_user'] ?> [<?= $actual['division'] ?>-<?= $actual['name_station'] ?>]</td>
                                <td><?= $actual['desc_source'] ?></td>
                                <!-- <td><?= $actual['source'] ?></td> -->
                                <td><?= $actual['category'] ?></td>
                                <td><?= $actual['currency'] ?> <?= number_format($actual['amount_debit'], 0, ",", "."); ?></td>
                                <td><?= $actual['currency'] ?> <?= number_format($actual['amount_credit'], 0, ",", "."); ?></td>
                                <td><?php echo date('d-M-Y', strtotime($actual['actual_date'])) ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('actual/editactual/' . $actual['id_actual']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('actual/deleteactual/' . $actual['id_actual'] . '/' . $actual['id_budget']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
                                    </a>
                                    <input type="hidden" name="id_budget" value="<?= $actual["id_budget"] ?>">

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
</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->