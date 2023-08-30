    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <div class="d-flex justify-content-between">
                    <h6 class="m-2 font-weight-bold text-primary">Add Travel DA</h6>
                    <a href="#info" data-toggle="modal"><i class="fa fa-info-circle" style=" font-size:25px"></i></a>
                </div>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('budget/travelda') ?>" class="row g-3" enctype="multipart/form-data">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">PIC</label>
                        <select name="user" class="form-control" id="user" class="selectpicker" data-live-search="true">
                            <?php
                            foreach ($user as $user) : ?>
                                <option value="<?= $user['id_user'] ?>"><?= $user['name_user'] ?> [<?= $user['division'] ?> - <?= $user['name_station'] ?>]</option>
                            <?php endforeach; ?>
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
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Programme</label>
                        <input type="text" name="program" class="form-control" id="program">
                        <?= form_error('program', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <div class="row">
                            <div class="col-4">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Destination</label>
                                <input type="text" name="tujuan" class="form-control" id="tujuan">
                                <?= form_error('tujuan', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-4">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Days (on trip)</label>
                                <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="hari" class="form-control" id="hari">
                                <?= form_error('hari', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-4">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Quantity (in a year)</label>
                                <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="qty" class="form-control" id="qty">
                                <?= form_error('qty', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Periode</label>
                        <!-- <input type="month" data-format="YYYY" name="periode" class="form-control" id="periode"> -->
                        <select name="periode" class="form-control" id="periode" data-live-search="true">
                            <?php
                            foreach ($tahun as $p) : ?>
                                <option value="<?= $p['tahun'] ?>"><?= $p['tahun'] ?></option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('periode', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="text-center col-12 mt-3  ">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                        <button type="button" onclick="history.go(-1);" class="btn btn-success">Kembali</button>

                    </div>
                </form><!-- Vertical Form -->
            </div>
            <div class="modal fade" id="info" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" data-dismiss="modal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-info-circle"></i> Information</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="<?= base_url('fotouser/info.png') ?>" style="width:100px;" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- </div>  
    </div>

</div> -->
    <script>
        $(function() {
            $('select').selectpicker();
            $('#datepicker').datepicker();
        });
    </script>

    </main><!-- End #main -->