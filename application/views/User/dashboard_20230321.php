        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->

            <!-- Content Row -->
            <div class="row">
                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <?php $no = 1;
                                foreach ($user as $user) : ?>
                                    <div class="col md-3">
                                        <img src="<?= base_url('fotouser/') . $user['fotouser'] ?>" style="width:30%;margin: auto; display: block;">
                                    </div>
                                    <!-- <div class="col-auto">
                                    <i class="fas fa-info-circle fa-2x text-gray-300"></i>
                                </div> -->

                            </div>
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="text-s font-weight-bold text-primary text-uppercase mb-1">
                                        Halo <?= $user['name_user'] ?>,
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg">
                                    <a class="btn btn-primary btn-icon-split" >
                                        <span class="icon text-white-50">
                                            Station :
                                        </span>
                                        <span class="text"><?= $user['name_station'] ?></span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            Cost Center :
                                        </span>
                                        <span class="text"><?= $user['name_costcenter'] ?></span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            Divisi :
                                        </span>
                                        <span class="text"><?= $user['division'] ?></span>
                                    </a>
                                    <div class="my-2"></div>


                                </div>
                                <div class="col-lg-6">
                                    <!-- <div class="my-2"></div> -->
                                    <a class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            LOB :
                                        </span>
                                        <span class="text"><?= $user['name_lob'] ?></span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            Departement :
                                        </span>
                                        <span class="text"><?= $user['name_dpt'] ?></span>
                                    </a>
                                    <div class="my-2"></div>

                                    <?php $no++;
                                endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Pie Chart -->
            <div class="col-xl-6 col-lg-5">
                <div class="card shadow mb-4" style="min-height: 517px">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Percentage (%)</h6>
                        <div class="dropdown no-arrow">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                            </a>
                        </div>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <div class="chart-pie pt-6 pb-4">
                            <canvas id="myPieChart"></canvas>
                        </div>
                        <div class="mt-4 text-center small">
                            <!-- Button trigger modal -->
                            <div class="modal fade sisabudget" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" data-dismiss="modal">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr style="text-align: center;">
                                                        <th>No</th>
                                                        <th>Account</th>
                                                        <th>Description source of module</th>
                                                        <th>Description</th>
                                                        <th>Source</th>
                                                        <!-- <th>Category</th> -->
                                                        <!-- <th>Currency</th> -->
                                                        <th>Budget Amount</th>
                                                        <th>Remaining Balance</th>
                                                        <th>Status</th>
                                                        <!-- <th>Date</th> -->
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <?php $no = 1;
                                                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                                                    foreach ($bgs as $bg) : ?>
                                                        <tr style="text-align: center;">
                                                            <input type="hidden" id="id_budget" value="<?= $bg['id_budget'] ?>">
                                                            <input type="hidden" id="id_user" value="<?= $bg['id_user'] ?>">
                                                            <td><?= $no; ?></td>
                                                            <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                                            <td><?= $bg['desc_source'] ?></td>
                                                            <td><?= $bg['description'] ?></td>
                                                            <td><?= $bg['source'] ?></td>
                                                            <!-- <td><?= $bg['currency'] ?></td> -->
                                                            <td><?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?></td>
                                                            <td><?= number_format($bg['amount_debit'] - $bg['debit'], 0, ",", ".") ?> <?= $bg['currency'] ?></td>

                                                            <td><a href="#myModal2" class="btn btn-info" onclick="dtl_actual(<?= $bg['id_budget'] ?>,<?= $bg['id_user'] ?>)" data-toggle="modal"><?= $bg['status'] ?></a></td>
                                                            <!-- <td><?= $bg['create_date']; ?></td> -->

                                                        </tr>
                                                        <?php $no++;
                                                    endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade budget" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" data-dismiss="modal">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Detail Budget</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <table class="table table-bordered" id="dataTable3" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr style="text-align: center;">
                                                        <th>No</th>
                                                        <th>Account</th>
                                                        <th>Description source of module</th>
                                                        <th>Description</th>
                                                        <th>Source</th>
                                                        <!-- <th>Category</th> -->
                                                        <!-- <th>Currency</th> -->
                                                        <th>Budget Amount</th>
                                                        <!-- <th>Accounted CR Amount</th> -->
                                                        <!-- <th>Status</th> -->
                                                        <!-- <th>Date</th> -->
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <?php $no = 1;
                                                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                                                    foreach ($bgg as $bg) : ?>
                                                        <tr style="text-align: center;">
                                                            <td><?= $no; ?></td>
                                                            <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                                            <td><?= $bg['desc_source'] ?></td>
                                                            <td><?= $bg['description'] ?></td>
                                                            <td><?= $bg['source'] ?></td>
                                                            <!-- <td><?= $bg['category'] ?></td> -->
                                                            <!-- <td><?= $bg['currency'] ?></td> -->
                                                            <td><?= number_format($bg['amount_debit'], 0, ",", "."); ?> <?= $bg['currency'] ?></td>
                                                            <!-- <td>Rp <?= number_format($bg['amount_credit'], 0, ",", "."); ?></td> -->
                                                            <!-- <td><a href="#myModal2" class="btn btn-info" onclick="dtl_actual(<?= $bg['id_budget'] ?>,<?= $bg['id_user'] ?>)" data-toggle="modal"><?= $bg['status'] ?></a></td> -->
                                                            <!-- <td><?= $bg['create_date']; ?></td> -->
                                                        </tr>
                                                        <?php $no++;
                                                    endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal" id="myModal2" data-backdrop="static" aria-labelledby="myLargeModalLabel" data-dismiss="modal" data-toggle="modal">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body"></div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>

                            </div>
                            <div class="modal fade actual" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Detail Actual</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr style="text-align: center;">
                                                        <th>No</th>
                                                        <th>Account</th>
                                                        <th>Description source of module</th>
                                                        <th>Description</th>
                                                        <th>Source</th>
                                                        <!-- <th>Category</th> -->
                                                        <!-- <th>Currency</th> -->
                                                        <th>Actual DR Amount</th>
                                                        <th>Actual CR Amount</th>
                                                        <th>Trx. Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <?php $no = 1;
                                                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                                                    foreach ($actual as $actual) : ?>
                                                        <tr style="text-align: center;">
                                                            <td><?= $no; ?></td>
                                                            <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                                            <td><?= $actual['desc_source'] ?></td>
                                                            <td><?= $actual['description'] ?></td>
                                                            <td><?= $actual['source'] ?></td>
                                                            <!-- <td><?= $bg['category'] ?></td> -->
                                                            <td><?= number_format($actual['amount_debit'], 0, ",", "."); ?> <?= $actual['currency'] ?></td>
                                                            <td><?= number_format($actual['amount_credit'], 0, ",", "."); ?> <?= $actual['currency'] ?></td>
                                                            <td><?php echo date('M-d-Y', strtotime($actual['actual_date'])) ?></td>
                                                        </tr>
                                                        <?php $no++;
                                                    endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <!-- <div class="col-xl-4 col-md-6 mb-4 " data-toggle="modal" data-target=".budget"> -->
        <div class="col-xl-4 col-md-6 mb-4 ">
            <div class="card border-left-info shadow h-100 py-2 effect">
                <div class="card-body ">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Total Budget
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($totalbudget, 0, ",", "."); ?></div>
                            <input type="hidden" id="totalbudget" value="<?= $totalbudget ?>">

                        </div>
                        <div class="col-auto">
                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2 effect">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            ACTUAL TRANSAKSI</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($debitactual, 0, ",", "."); ?></div>
                            <input type="hidden" id="totalactual" value="<?= $debitactual ?>">

                        </div>
                        <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4" data-toggle="modal" data-target=".sisabudget">
            <div class="card border-left-primary shadow h-100 py-2 effect">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            SISA BUDGET PENGAJUAN</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($sisa, 0, ",", "."); ?>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

<!-- Content Row -->
<!-- Content Row -->
<!-- /.container-fluid -->
</div>

        <!-- End of Main Content -->