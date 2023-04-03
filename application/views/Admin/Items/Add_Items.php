    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Items</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('admin/additems') ?>" class="row g-3" enctype="multipart/form-data">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Items Name</label>
                                <input type="text" name="name" class="form-control" id="name">
                                <?= form_error('name', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Items Information</label>
                                <textarea class="form-control" id="info" name="info" rows="4"></textarea>
                                <?= form_error('info', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Items Price</label>
                                <input type="text" name="price" class="form-control" id="price">
                                <?= form_error('price', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="text-center col-12 mt-3  ">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                                <button onclick="history.go(-1);" class="btn btn-success">Kembali</button>
                            </div>
                        </form><!-- Vertical Form -->
                    </div>
                </div>
            </div>
        </div>  
    </div>

</div>
</main><!-- End #main -->