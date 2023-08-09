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
                    <tbody class="list" id="resultData">

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<script>
    base_url = "http://192.168.111.28/Symba-API/";

    $.ajax({
        url: base_url + "User_api",
        method: 'GET',
        dataType: 'json',
        success: function(resp) {
            var len = resp.data.length;
            // console.log(len);
            for (var i = 0; i < len; i++) {
                var id = resp.data[i].id_user;
                var username = resp.data[i].username_user;
                // var name = response[i].name;
                // var email = response[i].email;
                // console.log(id);
                var row = '<tr style="text-align: center;">' +
                    '<td>' + (i + 1) + '</td>' +
                    '<td><img class="img-fluid" src="' + base_url + 'fotouser/' + resp.data[i].fotouser + '" alt="" style="width:75px ;"></td>' +
                    '<td>' + resp.data[i].name_user + '</td>' +
                    '<td>' + resp.data[i].username_user + '</td>' +
                    '<td>' + resp.data[i].division + '</td>' +
                    '<td>' + resp.data[i].name_dpt + '</td>' +
                    '<td>' + resp.data[i].code_station + '</td>' +
                    '<td>' + resp.data[i].name_lob + '</td>' +
                    '<td>' + resp.data[i].name_station + '</td>' +
                    '<td>' + resp.data[i].roles + '</td>' +
                    '<td class = "text-center" >' +
                    '<a href = "' + base_url + 'admin/edituser/' + id + '" type = "button" class = "fa fa-edit" style = "color:green" ></a>' +
                    '<a type = "button" class = "fa fa-trash" style = "color:red" onclick = "user_delete(' + id + ');return confirm(\'Are you sure to delete this row ?\')"></a>' +
                    '<a href = "' + base_url + 'admin/resetpassworduser/' + id + '" type = "button" class = "fa fa-lock" style = "color:blue" ></a></td>' +
                    '</tr>'

                // $("#resultData").html("");
                $("#resultData").append(row);
            }
        }
    })

    function user_delete(id) {
        $.ajax({
            url: base_url + "User_api",
            type: 'delete',
            dataType: 'json',
            data: {
                id: id
            },
            success: function(response) {
                console.log(response);
                if (response.status == true) {
                    window.location.replace(base_url + "admin/user");
                    alert(response.message);
                    // $('#addNewServivalModal').modal('hide').hide('slow').delay(3000).fadeOut(300);
                } else {
                    window.location.replace(base_url + "admin/user");
                    alert(response.message);


                }
            },
        });
    }
</script>