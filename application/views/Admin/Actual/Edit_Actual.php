    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Edit Actual Budget</h6>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('actual/editactual/' . $actual["id_actual"]) ?>" class="row g-3" enctype="multipart/form-data">

                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Budget</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="bg" class="selectpicker" data-live-search="true">

                            <?php
                            foreach ($bg as $bg) : ?>
                                <option value="<?= $bg['id_budget'] ?>" <?= ($actual["id_budget"] == $bg['id_budget']) ?
                                                                            "selected" : "" ?>><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?> [<?= $bg['name_user'] ?>-<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]
                                    [ <?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?> ]
                                </option>
                            <?php endforeach; ?>
                        </select>
                        <input type="hidden" name="id_budget" value="<?= $actual["id_budget"] ?>">
                        <?= form_error('bg', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>

                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Description</label>
                        <input type="text" name="desc" class="form-control" id="desc" value="<?= $actual['description'] ?>">
                        <?= form_error('desc', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Source</label>
                        <input type="text" name="source" class="form-control" id="source" value="<?= $actual['source'] ?>">
                        <?= form_error('source', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Category</label>
                        <input type="text" name="category" class="form-control" id="category" value="<?= $actual['category'] ?>">
                        <?= form_error('category', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Document Reference</label>
                        <input type="text" name="docref" class="form-control" id="docref" value="<?= $actual['doc_ref'] ?>">
                        <?= form_error('docref', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Doc. Number of Source</label>
                        <input type="text" name="dns" class="form-control" id="dns" value="<?= $actual['doc_number'] ?>">
                        <?= form_error('dns', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Desc. of source module</label>
                        <input type="text" name="dsm" class="form-control" id="dsm" value="<?= $actual['desc_source'] ?>">
                        <?= form_error('dsm', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Currency</label>
                        <input type="text" name="cur" class="form-control" id="cur" value="<?= $actual['currency'] ?>" disabled>
                        <?= form_error('cur', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Accounted DR Amount</label>
                        <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="debit" class="form-control" id="debit" value="<?= $actual['amount_debit'] ?>">
                        <?= form_error('debit', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Accounted CR Amount</label>
                        <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="credit" class="form-control" id="credit" value="<?= $actual['amount_credit'] ?>">
                        <?= form_error('credit', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Date</label>
                        <input type="text" name="date" class="form-control" id="datepicker" value="<?php echo date('Y-m-d', strtotime($actual['actual_date'])) ?>">
                        <?= form_error('date', '<small class="form-text text-danger">', '</small>'); ?>
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
    </div>

</div> -->
    <script>
        $(function() {
            $('select').selectpicker();
            $('#datepicker').datepicker();
        });
    </script>
    </main><!-- End #main -->