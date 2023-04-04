

<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="row">
        <!-- Pie Chart -->
        <div class="col-xl-6 col-lg-6">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Percentage (%)</h6>
                    <div class="dropdown no-arrow">
                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                        <canvas id="myPieChart"></canvas>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Content Column -->
        <div class="col-lg-6 mb-4">

            <!-- Project Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Division</h6>
                </div>
                <div class="row">
                    <?php $no = 1;
                    foreach ($summary as $sm) : ?>
                        <div class="col-sm-6" style="margin-bottom: -40px">
                            <div class="card-body">
                                <h4 class="small font-weight-bold"><?= $sm['division']?> <span class="float-right">
                                    <?php if($sm['debit_budget'] == 0 || ($sm['debit_actual']/$sm['debit_budget']*100) > 100){
                                        ?>100
                                    <?php }else{
                                        echo ceil($sm['debit_actual']/$sm['debit_budget']* 100);} ?>%
                                    </span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar sm-danger" role="progressbar" style="width:
                                        <?php if($sm['debit_budget'] == 0 || ($sm['debit_actual']/$sm['debit_budget']*100) > 100 ){echo 100;}else{echo ($sm['debit_actual']/$sm['debit_budget']) * 100;} ?>%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php $no++;
                    endforeach; ?>
                </div>
            </div>

        </div>
    </div>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Summary</h1>

    </div>

    <!-- Content Row -->
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Budget Amount</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($debitbudget, 0, ",", "."); ?> IDR</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Actual Amount</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($debitactual, 0, ",", "."); ?> IDR</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Variance</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format($debitbudget-$debitactual, 0, ",", "."); ?> IDR</div>
                            <input type="hidden" id="totalbudget" value="<?= $totalbudget ?>">
                            <input type="hidden" id="totalactual" value="<?= $totalactual ?>">

                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">SUMMARY</h6>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th rowspan="2">No</th>
                            <th rowspan="2">Divisi</th>
                            <th >Budget</th>
                            <th colspan="2">Actual</th>
                        </tr>
                        <tr style="text-align: center;">
                            <th>Amount</th>
                            <!-- <th>Status</th>  -->
                            <th>Amount</th>
                            <th>Variance</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        foreach ($summary as $sm) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $sm['division']?>-<?= $sm['code_station']?></td>
                                <td><a href="#budget" onclick="budget(<?= $sm['id_user'] ?>)" data-toggle="modal"><?= number_format($sm['debit_budget'], 0, ",", "."); ?> <?= $sm['bd']?></a></td>
                                <td><a href="#budget" onclick="actual(<?= $sm['id_user'] ?>)" data-toggle="modal"><?= number_format($sm['debit_actual']-$sm['credit_actual'], 0, ",", "."); ?> <?= $sm['bd']?></a></td>
                                <td><a href="#budget" onclick="creditactual(<?= $sm['id_user'] ?>)" data-toggle="modal"><?= number_format($sm['debit_budget']-$sm['debit_actual']+$sm['credit_actual'], 0, ",", "."); ?> <?= $sm['bd']?></a></td>
                            </tr>
                            <?php $no++;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="modal" id="budget" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" data-dismiss="modal">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body budget"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Content Row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
