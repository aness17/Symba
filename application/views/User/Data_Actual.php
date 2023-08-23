<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Actual Data</h6>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>Description source of module</th>
                            <th>Source</th>
                            <th>Category</th>
                            <th>Currency</th>
                            <th>Accounted DR Amount</th>
                            <th>Accounted CR Amount</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($actual as $actual) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $actual['id_acc'] ?>.<?= $actual['subacc'] ?>.<?= $actual['product'] ?>.<?= $actual['code_costcen'] ?>.<?= $actual['code_station'] ?>.<?= $actual['company'] ?></td>
                                <td><?= str_replace('#', ' ', $actual['desc_source']) ?></td>
                                <td><?= $actual['source'] ?></td>
                                <td><?= $actual['category'] ?></td>
                                <td><?= $actual['currency'] ?></td>
                                <td>Rp <?= number_format($actual['amount_debit'], 0, ",", "."); ?></td>
                                <td>Rp <?= number_format($actual['amount_credit'], 0, ",", "."); ?></td>
                                <td><?= $actual['actual_date']; ?></td>

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