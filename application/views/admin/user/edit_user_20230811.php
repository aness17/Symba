<div class="container-fluid">
    <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
    <!-- Project Card Example -->
    <div class="card shadow mb-12">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edit User</h6>
        </div>
        <div class="card-body">
            <form method="POST" id="edituser" class="row g-3" enctype="multipart/form-data">
                <input type="hidden" id="id" value="<?= $user["id_user"] ?>">
                <div class="col-12">
                    <label for="nameuser" class="form-label">Name User</label>
                    <input type="text" name="nameuser" class="form-control" id="nameuser" value="<?= $user["name_user"] ?>">
                </div>
                <div class="col-12">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" name="username" class="form-control" id="username" value="<?= $user["username_user"] ?>">
                </div>
                <div class="col-12">
                    <label for="inputNanme4" class="form-label">Division</label>
                    <select name="dvn" class="form-control" id="dvn" name="dvn">
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
                            <input type="file" multiple="true" name="fotouser" class="form-control" value="<?= $user["fotouser"] ?>" id="fotouser" accept=".png, .jpg, .jpeg" onchange="readURL(this);">
                        </div>
                        <div class="col-6">
                            <br>
                            <input type="hidden" name="img" id="img" data-value="<?= $user["fotouser"] ?>">
                            <img class="img-responsive img-portfolio img-hover" id="blah" src="<?= base_url() ?>fotouser/<?= $user["fotouser"] ?>" alt="your image" width="150px" height="auto" />
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <label for="role" class="form-label">Role User</label>
                    <select name="role" class="form-control" id="role" name="role">
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
</main>
<script>
    base_url = "http://192.168.111.28/Symba-API/";
    $(document).ready(function() {
        $('#edituser').on('submit', function(e) {
            // e.preventDefault();
            $.ajax({
                url: base_url + "User_api",
                method: "PUT",
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                async: false,
                dataType: "json",
                success: function(res) {
                    console.log(data);
                    if (res.status == true) {
                        window.location.replace(base_url + "admin/user");
                        alert(res.msg);
                    } else if (res.status == false) {
                        alert(res.msg);
                        window.location.replace(base_url + "user_api");
                    }
                    // setTimeout(function() {
                    //     alert(res.msg);
                    // }, 3000);
                }
            })
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
    // Get a reference to our file input
    // const fileInput = document.querySelector('input[type="file"]');
    // let img = document.getElementById('img');
    // var val = img.getAttribute('data-value');
    // // console.log(val);
    // // Create a new File object
    // const myFile = new File(['Hello World!'], val, {
    //     type: 'text/plain',
    //     lastModified: new Date(),
    // });
    // // Now let's create a DataTransfer to get a FileList
    // const dataTransfer = new DataTransfer();
    // dataTransfer.items.add(myFile);
    // fileInput.files = dataTransfer.files;
</script>