    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Header Budget</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('budget/addheaderbudget') ?>" class="row g-3">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Account</label>
                                                                <!-- <input type="text" name="acc" class="form-control" id="acc"> -->

                                <select name="acc" class="form-control" id="acc">

                                    <?php
                                    foreach ($account as $acc) : ?>
                                        <option value="<?= $acc['id_account'] ?>">[<?= $acc['id_acc'] ?>] <?= $acc['remark_acc'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('acc', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">PIC</label>
                                <select name="user" class="form-control" id="user">

                                    <?php
                                    foreach ($user as $user) : ?>
                                        <option value="<?= $user['id_user'] ?>"><?= $user['name_user'] ?> [<?= $user['division'] ?> - <?= $user['name_station'] ?>]</option>
                                    <?php endforeach; ?>
                                </select>
                                <?= form_error('user', '<small class="form-text text-danger">', '</small>'); ?>
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