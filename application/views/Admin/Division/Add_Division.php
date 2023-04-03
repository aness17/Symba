    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Division</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('admin/adddvn') ?>" class="row g-3" enctype="multipart/form-data">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Division</label>
                                <input type="text" name="dvn" class="form-control" id="dvn">
                                <?= form_error('dvn', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Departement</label>
                                <select name="dpt" class="form-control" id="exampleFormControlSelect1" name="dpt">

                                    <?php
                                    foreach ($dpt as $dpt) : ?>
                                        <option value="<?= $dpt['id_dpt'] ?>"><?= $dpt['name_dpt'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('dpt', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Cost Center</label>
                                <select name="cc" class="form-control" id="exampleFormControlSelect1" name="cc">

                                    <?php
                                    foreach ($cc as $cc) : ?>
                                        <option value="<?= $cc['id_costcen'] ?>"><?= $cc['code_costcen'] ?> - <?= $cc['name_costcenter'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('cc', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">LOB</label>
                                <select name="lob" class="form-control" id="exampleFormControlSelect1" name="lob">

                                    <?php
                                    foreach ($lob as $lob) : ?>
                                        <option value="<?= $lob['id_lob'] ?>"><?= $lob['name_lob'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('lob', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Station</label>
                                <select name="station" class="form-control" id="exampleFormControlSelect1" name="station">

                                    <?php
                                    foreach ($station as $station) : ?>
                                        <option value="<?= $station['id_station'] ?>"><?= $station['name_station'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('station', '<small class="form-text text-danger">', '</small>'); ?>
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