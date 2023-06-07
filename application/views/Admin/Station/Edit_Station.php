    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Edit Departement</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('admin/editstation/' . $station["id_station"]) ?>" class="row g-3" enctype="multipart/form-data">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Code Station</label>
                                <input type="text" name="code" class="form-control" id="code">
                                <?= form_error('Code', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Station Name</label>
                                <input type="text" name="station" class="form-control" id="station" value="<?= $station["name_station"] ?>">
                                <?= form_error('station', '<small class="form-text text-danger">', '</small>'); ?>
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
</main><!-- End #main -->