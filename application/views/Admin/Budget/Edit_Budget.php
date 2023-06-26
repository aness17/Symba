    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Edit Budget</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('budget/editbudget/' . $bg["id_budget"])?>" class="row g-3" enctype="multipart/form-data">

                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Account</label>
                                <select name="acc" class="form-control" id="exampleFormControlSelect1" name="cc"<?php if(strlen($bg['status']) == 3 ){ 
echo "disabled";
}else { 
echo"";}
?>
>

                                    <?php
                                    foreach ($account as $acc) : ?>
                                        <option value="<?= $acc['id_account'] ?>"<?= ($bg["id_account"] == $acc['id_account']) ? "selected" : "" ?>>[<?= $acc['id_acc'] ?>] <?= $acc['remark_acc'] ?></option>
                                        
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('Account', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">PIC</label>
                                <select name="user" class="form-control" id="exampleFormControlSelect1" name="user"<?php if(strlen($bg['status']) == 3 ){ 
echo "disabled";
}else { 
echo"";}
?>
>

                                    <?php
                                    foreach ($user as $user) : ?>
                                        <option value="<?= $user['id_user'] ?>"<?= ($bg["id_user"] == $user['id_user']) ? "selected" : "" ?>><?= $user['name_user'] ?> [<?= $user['division'] ?> - <?= $user['name_station'] ?>]</option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('user', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Description</label>
                                <input type="text" name="desc" class="form-control" id="desc" value="<?= $bg['description'] ?>">
                                <?= form_error('desc', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <!-- <div class="col-12">
                                <label for="inputNanme4" class="form-label">Source</label>
                                <input type="text" name="source" class="form-control" id="source" value="<?= $bg['source'] ?>">
                                <?= form_error('source', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Category</label>
                                <input type="text" name="category" class="form-control" id="category" value="<?= $bg['category'] ?>">
                                <?= form_error('category', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Document Reference</label>
                                <input type="text" name="docref" class="form-control" id="docref" value="<?= $bg['doc_ref'] ?>">
                                <?= form_error('docref', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Doc. Number of Source</label>
                                <input type="text" name="dns" class="form-control" id="dns" value="<?= $bg['doc_number'] ?>">
                                <?= form_error('dns', '<small class="form-text text-danger">', '</small>'); ?>
                            </div> -->
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Desc. of source module</label>
                                <input type="text" name="dsm" class="form-control" id="dsm" value="<?= $bg['desc_source'] ?>">
                                <?= form_error('dsm', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Currency</label>
                                <input type="text" name="cur" class="form-control" id="cur" value="<?= $bg['currency'] ?>" disabled>
                                <?= form_error('cur', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Accounted DR Amount</label>
                                <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="debit" class="form-control" id="debit" value="<?= $bg['amount_debit'] ?>">
                                <?= form_error('debit', '<small class="form-text text-danger">', '</small>'); ?>
                            </div> 
                            <!-- <div class="col-12">
                                <label for="inputNanme4" class="form-label">Accounted CR Amount</label>
                                <input type="number" name="credit" class="form-control" id="credit" value="<?= $bg['amount_credit'] ?>">
                                <?= form_error('credit', '<small class="form-text text-danger">', '</small>'); ?>
                            </div> -->
			                <div class="col-12">
                                <label for="inputNanme4" class="form-label">Date</label>
                                <input type="text" name="date" class="form-control" id="datepicker" value="<?php echo $bg['budget_year']; ?>"
<?php if(strlen($bg['status']) == 3 ){ 
echo "disabled";
}else { 
echo"";}
?>
>
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
            <!-- </div>
        </div>  
    </div> -->

</div>
<script>
$(function () {
    $('select').selectpicker();
    $('#datepicker').datepicker();
});
</script>
</main><!-- End #main -->