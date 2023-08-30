    <div class="container-fluid">
        <!-- <div class="row ml-1">
            <div class="col-lg-12"> -->
        <!-- Project Card Example -->
        <div class="card shadow mb-12">
            <div class="card-header py-3">
                <div class="d-flex justify-content-between">
                    <h6 class="m-2 font-weight-bold text-primary">Add Budget CAPEX OPEX</h6>
                    <a href="#info" data-toggle="modal"><i class="fa fa-info-circle" style=" font-size:25px"></i></a>
                </div>
            </div>
            <div class="card-body">
                <form method="POST" action="<?= base_url('budget/addbudget/') ?>" class="row g-3">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Account</label>
                        <select name="acc" class="form-control" id="acc" class="selectpicker" data-live-search="true">
                            <?php
                            foreach ($account as $h) : ?>
                                <option value="<?= $h['id_account'] ?>">[<?= $h['id_acc'] ?>] <?= $h['remark_acc'] ?></option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('Account', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>

                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>PIC</label>
                        <select name="user" class="form-control" id="exampleFormControlSelect1" class="selectpicker" data-live-search="true">
                            <?php
                            foreach ($user as $h) : ?>
                                <option value="<?= $h['id_user'] ?>"><?= $h['name_user'] ?> [<?= $h['division'] ?> - <?= $h['name_station'] ?>]</option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('user', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Programme</label>
                        <input type="text" name="program" class="form-control" id="program">
                        <?= form_error('program', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Description</label>
                        <input type="text" name="desc" class="form-control" id="desc">
                        <?= form_error('desc', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <div class="row">
                            <div class="col-6">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Qty</label>
                                <input type="text" name="qty" class="form-control" id="qty">
                                <?= form_error('qty', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                            <div class="col-6">
                                <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Unit</label>
                                <input type="text" name="unit" class="form-control" id="unit">
                                <?= form_error('unit', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-12">
                        <label for="inputNanme4" class="form-label">Doc. Number of Source</label>
                        <input type="text" name="dns" class="form-control" id="dns">
                        <?= form_error('dns', '<small class="form-text text-danger">', '</small>'); ?>
                    </div> -->
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Remarks</label>
                        <input type="text" name="dsm" class="form-control" id="dsm">
                        <?= form_error('dsm', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Currency</label>
                        <input type="text" name="cur" class="form-control" id="cur" value="IDR" disabled>
                        <?= form_error('cur', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="col-12">
                        <label for="debit" class="form-label"><span class="text-danger">*</span>Total Amount</label>
                        <input type="text" onkeypress="return /[0-9]/i.test(event.key)" name="dbt" class="form-control" id="dbt">
                        <input type="hidden" onkeypress="return /[0-9]/i.test(event.key)" name="debit" class="form-control" id="debit">
                        <?= form_error('debit', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <!-- <div class="col-12">
                                <label for="inputNanme4" class="form-label">Accounted CR Amount</label>
                                <input type="number" name="credit" class="form-control" id="credit">
                                <?= form_error('credit', '<small class="form-text text-danger">', '</small>'); ?>
                            </div>-->
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Budget Category</label>
                        <div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cat_bdgt" id="cat_bdgt" value="CAPEX">
                                <label class="form-check-label" for="cat_bdgt1">CAPEX</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="cat_bdgt" id="cat_bdgt" value="OPEX">
                                <label class="form-check-label" for="cat_bdgt2">OPEX</label>
                            </div>
                            <?= form_error('cat_bdgt', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="inputNanme4" class="form-label"><span class="text-danger">*</span>Date</label>
                        <input type="text" name="date" class="form-control" id="datepicker" placeholder="00/00/0000">
                        <?= form_error('date', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                    <div class="text-center col-12 mt-3  ">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                        <button type="button" onclick="history.go(-1);" class="btn btn-success">Kembali</button>
                    </div>
                </form><!-- Vertical Form -->
            </div>
            <div class="modal fade" id="info" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" data-dismiss="modal">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-info-circle"></i> Information</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="<?= base_url('fotouser/infobudget.png') ?>" style="width:100%;" />
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

        var rupiah = document.getElementById('dbt');
        rupiah.addEventListener('keyup', function(e) {
            // tambahkan 'Rp.' pada saat form di ketik
            // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
            rupiah.value = formatRupiah(this.value, '');
            ubah();
        });

        /* Fungsi formatRupiah */
        function formatRupiah(angka, prefix) {
            var number_string = angka.replace(/[^,\d]/g, '').toString(),
                split = number_string.split(','),
                sisa = split[0].length % 3,
                rupiah = split[0].substr(0, sisa),
                ribuan = split[0].substr(sisa).match(/\d{3}/gi);

            // tambahkan titik jika yang di input sudah menjadi angka ribuan
            if (ribuan) {
                separator = sisa ? '.' : '';
                rupiah += separator + ribuan.join('.');
            }

            rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
            return prefix == undefined ? rupiah : (rupiah ? '' + rupiah : '');
        }

        function ubah() {
            budget = document.getElementById('dbt').value;
            document.getElementById('debit').value = budget.replaceAll('.', '');

        }
    </script>
    </main><!-- End #main -->