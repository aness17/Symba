

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Division Data</h6>
                <a href="<?= base_url('admin/adddvn') ?>" class="btn btn-primary">Add Data</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Division</th>
                            <th>Departement</th>
                            <th>Cost Center</th>
                            <th>LOB</th>
                            <th>Station</th>

                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($dvn as $dvn) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $dvn['division'] ?></td>
                                <td><?= $dvn['name_dpt'] ?></td>
                                <td><?= $dvn['code_costcen'] ?> - <?= $dvn['name_costcenter'] ?></td>
                                <td><?= $dvn['name_lob'] ?></td>
                                <td><?= $dvn['name_station'] ?></td>

                                <td class="text-center">
                                    <a href="<?= base_url('admin/editdvn/' . $dvn['id_dvn']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('admin/deletedvn/' . $dvn['id_dvn']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
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