

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Actual Data</h6>
               <a href="<?= base_url('actual/upload2') ?>" class="btn btn-primary">Upload Data</a>
           </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Description source of module</th>
                            <th>Source</th>
                            <th>Category</th>
                            <!-- <th>Currency</th> -->
                            <th>Accounted DR Amount</th>
                            <th>Accounted CR Amount</th>
                            <th>Actual Date</th>
                            <!-- <th>Aksi</th> -->
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($actual as $actual) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $actual['id_acc'] ?>.<?= $actual['subacc'] ?>.<?= $actual['product'] ?>.<?= $actual['code_costcen'] ?>.<?= $actual['code_station'] ?>.<?= $actual['company'] ?></td>
                                <td><?= $actual['name_user'] ?> [<?= $actual['division'] ?>-<?= $actual['name_station'] ?>]</td>
                                <td><?= $actual['desc_source'] ?></td>
                                <td><?= $actual['source'] ?></td>
                                <td><?= $actual['category'] ?></td>
                                <td><?= number_format($actual['amount_debit'], 0, ",", "."); ?> <?= $actual['currency'] ?></td>
                                <td><?= number_format($actual['amount_credit'], 0, ",", "."); ?> <?= $actual['currency'] ?></td>
                                    <td><?php echo date('d-M-Y',strtotime($actual['actual_date'])) ?></td>
                               <!--  <td class="text-center">
                                    <a href="<?= base_url('actual/editactual/' . $actual['id_actual']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('actual/deleteactual/' . $actual['id_actual']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
                                    </a>
                                </td> -->
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