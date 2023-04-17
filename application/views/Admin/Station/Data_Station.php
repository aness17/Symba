

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Station Data</h6>
                <a href="<?= base_url('admin/addstation') ?>" class="btn btn-primary">Add Data</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Code</th>
                            <th>Station</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($station as $stn) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $stn['code_station'] ?></td>
                                <td><?= $stn['name_station'] ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('admin/editstation/' . $stn['id_station']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('admin/deletestation/' . $stn['id_station']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
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