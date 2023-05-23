    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Travel DA</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('user/travelda') ?>" class="row g-3" enctype="multipart/form-data">
                        <div class="col-12">
                                <label for="inputNanme4" class="form-label">PIC</label>
                                <select name="user" class="form-control" id="exampleFormControlSelect1" name="user" disabled>
                                    <option value="<?= $usr['id_user'] ?>"><?= $usr['name_user'] ?> [<?= $usr['division'] ?> - <?= $usr['name_station'] ?>]</option>
                                </select>
                                <?= form_error('user', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Grade</label>
                                <select name="grade" class="form-control" class="selectpicker" data-live-search="true" name="grade">
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                        <option value="F">F</option>
                                        <option value="G">G</option>
                                        <option value="H">H</option>
                                </select>                                
                                <?= form_error('grade', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Days</label>
                                <input type="number" name="hari" class="form-control" id="hari">
                                <?= form_error('hari', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Destination</label>
                                <input type="text" name="tujuan" class="form-control" id="tujuan">
                                <?= form_error('tujuan', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Qty</label>
                                <input type="number" name="qty" class="form-control" id="qty">
                                <?= form_error('qty', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Periode</label>
                                <input type="month" data-format="YYYY" name="periode" class="form-control" id="periode">
                                <?= form_error('periode', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="text-center col-12 mt-3  ">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                                <button type="button" onclick="history.go(-1);" class="btn btn-success">Kembali</button>

                            </div>
                        </form><!-- Vertical Form -->
                    </div>
                </div>
            </div>
        </div>  
    </div>

</div>
</main><!-- End #main -->