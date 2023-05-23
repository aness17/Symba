    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Travel DA</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('admin/addtravelda') ?>" class="row g-3" enctype="multipart/form-data">
                        
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
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Hotel</label>
                                <input type="text" name="hotel" class="form-control" id="hotel">
                                <?= form_error('hotel', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Daily Allowance</label>
                                <input type="text" name="da" class="form-control" id="da">
                                <?= form_error('da', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Ticket</label>
                                <input type="text" name="ticket" class="form-control" id="ticket">
                                <?= form_error('ticket', '<small class="form-text text-danger">', '</small>'); ?>
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