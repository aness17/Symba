    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Edit LOB</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('admin/editlob/' . $lob["id_lob"]) ?>" class="row g-3" enctype="multipart/form-data">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">LOB Name</label>
                                <input type="text" name="lob" class="form-control" id="lob" value="<?= $lob["name_lob"] ?>">
                                <?= form_error('lob', '<small class="form-text text-danger">', '</small>'); ?>
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