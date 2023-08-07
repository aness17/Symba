    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Reset Password User</h6>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('admin/resetpassworduser/' . $user["id_user"]) ?>" class="row g-3" enctype="multipart/form-data">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Username</label>
                        <input type="text" name="username" class="form-control" id="username" value="<?= $user['username_user'] ?>" disabled>
                        <?= form_error('username', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Password</label>
                        <input type="password" name="password" class="form-control" id="password">
                        <?= form_error('password', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="text-center col-12 mt-3  ">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                        <button type="button" onclick="history.go(-1);" class="btn btn-success">Kembali</button>

                    </div>
                </form><!-- Vertical Form -->
            </div>
        </div>
        <!-- </div>
        </div>
    </div> -->

    </div>
    <script>
        $(function() {
            $('select').selectpicker();
        });
    </script>
    </main><!-- End #main -->