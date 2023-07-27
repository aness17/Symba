<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">User Data</h6>
                <a href="<?= base_url('admin/adduser') ?>" class="btn btn-primary">Add Data</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Foto User</th>
                            <th>Nama User</th>
                            <th>Username</th>
                            <th>Division</th>
                            <th>Departement</th>
                            <th>Cost Center</th>
                            <th>LOB</th>
                            <th>Station</th>
                            <th>Role User</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($user as $user) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><img class="img-fluid" src="<?= base_url('fotouser/') . $user['fotouser'] ?>" alt="" style="width:75px ;"></td>
                                <td><?= $user['name_user'] ?></td>
                                <td><?= $user['username_user'] ?></td>
                                <td><?= $user['division'] ?></td>
                                <td><?= $user['name_dpt'] ?></td>
                                <td><?= $user['name_costcenter'] ?></td>
                                <td><?= $user['name_lob'] ?></td>
                                <td><?= $user['name_station'] ?></td>
                                <td><?= $user['roles'] ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('admin/edituser/' . $user['id_user']) ?>" type="button" class="fa fa-edit" style="color:green">
                                    </a>
                                    <a href="<?= base_url('admin/deleteuser/' . $user['id_user']) ?>" type="button" class="fa fa-trash" style="color:red" onclick="return confirm('Are you sure to delete this row ?')">
                                    </a>
                                    <a href="<?= base_url('admin/resetpassworduser/' . $user['id_user']) ?>" type="button" class="fa fa-lock" style="color:blue">
                                    </a>
                                    <!-- <a href=" <?= base_url('admin/resetpassworduser/' . $user['id_user']) ?>" type="button" class="fas fa-lock" style="color:blue">
                                    </a> -->
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