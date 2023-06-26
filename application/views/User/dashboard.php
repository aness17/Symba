<!-- Begin Page Content -->
<div class="container-fluid">

            <!-- Page Heading -->

            <!-- Content Row -->
            <div class="row">
                <div class="col-xl-6 col-lg-5">
                    <div class="card shadow mb-4" style="min-height: 517px">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <?php $no = 1;
                                foreach ($user as $user) : ?>
                                    <div class="col md-3">
                                        <img src="<?= base_url('fotouser/') . $user['fotouser'] ?>" style="width:30%;margin: auto; display: block;">
                                    </div>
                                    <!-- <div class="chart-pie pt-6 pb-4">
                            <canvas id="myPieChart"></canvas>
                        </div> -->
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
                                    <a class="btn btn-primary btn-icon-split ">
                                        <span class="icon text-white-50">
                                            Periode :
                                        </span>
                                        <span class="text shadow py-2 effect">
                                            <form action="" method="post">
                                                <select id="tahun" name="tahun" class="ml-3">
                                                    <option value="-">Pilih Tahun</option>  
                                                    <?php foreach ($tahun as $r) : ?>
                        				<option value="<?= $r['tahun'] ?>" <?= ($r['tahun'] == $thn) ? "selected" : "" ?>><?= $r['tahun'] ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                                <?= form_error('tahun', '<small class="form-text text-danger">', '</small>'); ?>

                                                <button type="submit" id="tombol">Cek</button>
                                            </form>
                                        </span>
                                    </a>
                                <div class="my-2"></div>
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
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <!-- <div class="chart-pie pt-6 pb-4">
                            <canvas id="myPieChart"></canvas>
                        </div> -->
                        
                        <div class="chart-bar">
                            <canvas id="myBarChart"></canvas>
                        </div>
                        <?php
                        $hasil = '';
                        foreach($diagram as $d){                            
                            $flatArray = array_column($diagram, 'jumlah');
                            if(count($diagram) > 0){
                                $hasil = implode(",",$flatArray);
                            }else{
                                $hasil = $flatArray;
                            }
                        }
                        ?>
                        <input type="hidden" id="diagram" value="<?=$hasil;?>">
                        <div class="mt-4 text-center small">
                            <!-- Button trigger modal -->
                            <div class="modal fade sisabudget" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" data-dismiss="modal">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Detail Remaining Budget</h5>
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
                                                        <th>Used</th>
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
                                                            <td><?= number_format($bg['amount_debit'] - $bg['debit'] + $bg['credit'], 0, ",", ".") ?> <?= $bg['currency'] ?></td>

                                                            <td><a href="#myModal2" <?php if($bg['status'] == 'yes'){ echo 'class="btn btn-success"';}else{ echo 'class="btn btn-danger"';}?> onclick="dtl_actual(<?= $bg['id_budget'] ?>,<?= $bg['id_user'] ?>)" data-toggle="modal"><?= $bg['status'] ?></a></td>
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
                            
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <!-- <div class="col-xl-4 col-md-6 mb-4 " data-toggle="modal" data-target=".budget"> -->
        <div class="col-xl-4 col-md-6 mb-4 ">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body ">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Budget
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($totalbudget, 0, ",", "."); ?></div>
                            <input type="hidden" id="totalbudget" value="<?= $totalbudget ?>">

                        </div>
                        <div class="col-auto">
                            <i class="fas fa-money fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            Actual</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($debitactual, 0, ",", "."); ?></div>
                            <input type="hidden" id="totalactual" value="<?= $debitactual ?>">

                        </div>
                        <div class="col-auto">
                            <i class="fas fa-money fa-2x text-gray-300"></i>
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
                            Remaining</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($sisa, 0, ",", "."); ?>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-money fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>


    <!-- Page Heading -->
    
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex justify-content-between">
                <h6 class="m-2 font-weight-bold text-primary">Budget Data</h6>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <!-- <th>PIC</th> -->
                            <th>Description</th>
                            <!-- <th>Currency</th> -->
                            <th>Balance</th>
                            <!-- <th>Date</th> -->
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                            // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($budget as $bg) : ?>
                            <tr style="text-align: center;">
                                <td><?= $no; ?></td>
                                <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                <!-- <td><?= $bg['name_user'] ?> [<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]</td> -->
                                <td><?= $bg['remark_acc'] ?></td>
                                <td><?= number_format($bg['total_budget'], 0, ",", "."); ?> IDR</td>
                                <td><a href="#detailbudget" onclick="dtl_budget(<?=$bg['id_user'] ?>,<?= $bg['id_bdgt']?>)" class="fa fa-binoculars" style="color:blue" data-toggle="modal">
                                    </a></td>    
                                                            </tr>
                            <?php $no++;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>     
    </div>
    <div class="modal fade" id="detailbudget" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" data-dismiss="modal">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Detail Budget</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="bodydetailbudget">
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
                                            <h5 class="modal-title" id="exampleModalLabel">Transaction List</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body" id="bodyMyModal2"></div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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