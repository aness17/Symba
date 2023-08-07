    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Add User</h6>
            </div>
            <div class="card-body">
                <form method="POST" id="adduser" class="row g-3" enctype="multipart/form-data">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Name User</label>
                        <input type="text" name="nameuser" class="form-control" id="nameuser" required>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Username</label>
                        <input type="text" name="username" class="form-control" id="username" required>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Password</label>
                        <input type="password" name="password" class="form-control" id="password" required>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Division</label>
                        <select name="dvn" class="form-control" class="selectpicker" data-live-search="true" name="dvn" required>

                            <?php
                            foreach ($dvn as $dvn) : ?>
                                <option value="<?= $dvn['id_dvn'] ?>"><?= $dvn['division'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-12">
                        <label for="inputPassword4" class="form-label"><span class="text-danger">*</span>Foto User</label>
                        <input type="file" multiple="true" name="fotouser" class="form-control" id="fotouser" accept=".png, .jpg, .jpeg" onchange="readURL(this);" required>
                    </div>
                    <div class=" col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Role User</label>
                        <select name="role" class="form-control" id="exampleFormControlSelect1" name="role" required>

                            <?php
                            foreach ($role as $role) : ?>
                                <option value="<?= $role['id_role'] ?>"><?= $role['roles'] ?></option>
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

        base_url = "http://192.168.111.92/Symba-API/";

        $(document).ready(function() {
            $('#adduser').on('submit', function(e) {
                e.preventDefault();
                if ($('#image_file').val() == '') {
                    alert("Please Select the File");
                } else {
                    $.ajax({
                        url: base_url + "User_api",
                        method: "POST",
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        async: false,
                        dataType: "json",
                        success: function(res) {
                            console.log(res);
                            if (res.status == true) {
                                window.location.replace(base_url + "admin/user");
                                alert(res.msg);

                            } else if (res.status == false) {
                                alert(res.msg);
                                window.location.replace(base_url + "user_api");
                            }
                            setTimeout(function() {
                                alert(res.msg);
                            }, 3000);
                        }
                    })
                }
            })
        })

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