    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Edit User</h6>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('admin/edituser/' . $user["id_user"]) ?>" class="row g-3" enctype="multipart/form-data"> <input type="hidden" id="id" value="<?= $user["id_user"] ?>">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Name User</label>
                        <input type="text" name="nameuser" class="form-control" id="nameuser" value="<?= $user["name_user"] ?>">
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Username</label>
                        <input type="text" name="username" class="form-control" id="username" value="<?= $user["username_user"] ?>">
                        <?= form_error('username', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Password</label>
                        <input type="password" name="password" class="form-control" id="password">
                        <?= form_error('password', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Division</label>
                        <select name="dvn" class="form-control" class="selectpicker" data-live-search="true" name="dvn" required>

                            <?php
                            foreach ($dvn as $dvn) : ?>
                                <option value="<?= $dvn['id_dvn'] ?>" <?= ($user["id_dvn"] == $dvn['id_dvn']) ? "selected" : "" ?>><?= $dvn['division'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-12">
                        <div class="row">
                            <div class="col-6">
                                <br>
                                <label for="inputPassword4" class="form-label"><span class="text-danger">*</span>Foto User</label>
                                <input type="file" multiple="true" name="fotouser" class="form-control" id="fotouser" accept=".png, .jpg, .jpeg" onchange="readURL(this);">
                            </div>
                            <div class="col-6">
                                <br>
                                <img class="img-responsive img-portfolio img-hover" id="blah" src="<?= base_url() ?>fotouser/<?= $user["fotouser"] ?>" alt="your image" width="150px" height="auto" />
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-12">
                        <label for="inputPassword4" class="form-label"><span class="text-danger">*</span>Foto User</label>
                        <input type="file" name="fotouser" class="form-control" id="fotouser">
                    </div> -->
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Role User</label>
                        <select name="role" class="form-control" id="exampleFormControlSelect1" name="role">
                            <?php
                            foreach ($role as $role) : ?>
                                <option value="<?= $role['id_role'] ?>" <?= ($user["id_role"] == $role['id_role']) ? "selected" : "" ?>><?= $role['roles'] ?></option>
                            <?php endforeach; ?>
                        </select>
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

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    </main><!-- End #main -->