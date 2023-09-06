    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Edit Periode</h6>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('admin/editPeriode/' . $p["id_periode"]) ?>" class="row g-3" enctype="multipart/form-data">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Periode Year</label>
                        <input type="text" name="periode" class="form-control" id="periode" value="<?= $p['periode_year'] ?>">
                        <?= form_error('periode', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Start of Periode</label>
                        <input type="text" name="start" class="form-control" id="datepicker" placeholder="00/00/0000" value="<?php echo date('Y-m-d', strtotime($p['start_date'])) ?>">
                        <?= form_error('start', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>End of Periode</label>
                        <input type="text" name="end" class="form-control" id="datepickerr" placeholder="00/00/0000" value="<?php echo date('Y-m-d', strtotime($p['end_date'])) ?>">
                        <?= form_error('end', '<small class="form-text text-danger">', '</small>'); ?>
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
    <!-- </div>  
    </div> -->
    <script>
        $(function() {
            $('#datepicker').datepicker();
            $('#datepickerr').datepicker();
        });
    </script>
    </main><!-- End #main -->