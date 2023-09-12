<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Budget Data</h6>
                <a href="<?= base_url('user/addbudget') ?>" class="btn btn-primary">Add Data</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>Program</th>
                            <th>Description</th>
                            <th>Remarks</th>
                            <!-- <th>Source</th> -->
                            <!-- <th>Currency</th> -->
                            <th>Total Amount</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($bg as $bg) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no ?></td>
                                <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                <td><?= str_replace('#', ' ', $bg['program']) ?></td>
                                <td><?= str_replace('#', ' ', $bg['description']) ?></td>
                                <td><?= str_replace('#', ' ', $bg['desc_source']) ?></td>
                                <td><?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?> </td>
                                <!-- <td><?= number_format($bg['amount_credit'], 0, ",", "."); ?></td> -->
                                <td><?= Date("M, Y", strtotime($bg['budget_date'])); ?></td>
                                <td><?= $bg['status'] ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('user/deletebudget/' . $bg['id_budget'] . '/capexopex') ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
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
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->