    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Actual Budget</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('actual/addactual/'. $id)?>" class="row g-3" enctype="multipart/form-data">

                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Budget</label>
                                <select name="bg" class="form-control" id="exampleFormControlSelect1" name="bg" disabled>

                                    <?php
                                    foreach ($bg as $bg) : ?>
                                        <option value="<?= $bg['id_budget'] ?>"<?= ($bg["id_budget"] == $id) ? "selected" : "" ?>     ><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?> 
                                        [Rp <?= number_format($bg['amount_debit'], 0, ",", "."); ?>
                                        ] [<?= $bg['name_user'] ?> - <?= $bg['division'] ?> <?= $bg['name_station'] ?>]
                                    </option>
                                <?php endforeach; ?>
                            </select>
                            <?= form_error('bg', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>  
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Description</label>
                            <input type="text" name="desc" class="form-control" id="desc">
                            <?= form_error('desc', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Source</label>
                            <input type="text" name="source" class="form-control" id="source">
                            <?= form_error('source', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Category</label>
                            <input type="text" name="category" class="form-control" id="category">
                            <?= form_error('category', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Document Reference</label>
                            <input type="text" name="docref" class="form-control" id="docref">
                            <?= form_error('docref', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Doc. Number of Source</label>
                            <input type="text" name="dns" class="form-control" id="dns">
                            <?= form_error('dns', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Desc. of source module</label>
                            <input type="text" name="dsm" class="form-control" id="dsm">
                            <?= form_error('dsm', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Currency</label>
                            <input type="text" name="cur" class="form-control" id="cur">
                            <?= form_error('cur', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Accounted DR Amount</label>
                            <input type="number" name="debit" class="form-control" id="debit">
                            <?= form_error('debit', '<small class="form-text text-danger">', '</small>'); ?>
                        </div> 
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Accounted CR Amount</label>
                            <input type="number" name="credit" class="form-control" id="credit">
                            <?= form_error('credit', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Date</label>
                            <input type="date" name="date" class="form-control" id="date">
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
    </div>  
</div>

</div>
</main><!-- End #main -->