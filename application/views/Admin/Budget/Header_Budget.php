

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex">
                <h6 class="mr-auto p-2 font-weight-bold text-primary">Budget Data</h6>
                <form action="" method="post" class="p-2">
                    <select id="tahun" name="tahun" class="ml-3">
                        <!-- <option value="-">Pilih Tahun</option>   -->
                        <?php foreach ($tahun as $r) : ?>
                        <option value="<?= $r['tahun'] ?>" <?= ($r['tahun'] == $thn) ? "selected" : "" ?>><?= $r['tahun'] ?></option>
                        <?php endforeach; ?>
                    </select>
                <?= form_error('tahun', '<small class="form-text text-danger">', '</small>'); ?>
                <button type="submit" id="tombol">Cek</button>
                </form>
                
                <a href="<?= base_url('admin/chooseadd') ?>" class="btn btn-primary p-2">Add Data</a>
                <!-- <a href="<?= base_url('budget/addheaderbudget') ?>" class="btn btn-primary">Add Data</a> -->
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable6" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Description</th>
                            <!-- <th>Currency</th> -->
                            <th>Balance</th>
                            <!-- <th>Date</th> -->
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($bg as $bg) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                <td><?= $bg['name_user'] ?> [<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]</td>
                                <td><?= $bg['remark_acc'] ?></td>
                                <!-- <td><?= $bg['category'] ?></td> -->
                                <!-- <td><?= $bg['currency'] ?></td> -->
                                <td><?= number_format($bg['total_budget'], 0, ",", "."); ?> IDR</td>
                                <td><a href="<?= base_url('budget/datadetailbudget/' . $bg['id_bdgt']) ?>" type="button" class="fa fa-binoculars" style="color:blue">
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