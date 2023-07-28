<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-2">
            <div class="d-flex">
                <h6 class="mr-auto p-2 font-weight-bold text-primary">Budget Data</h6>
                <form action="" method="post" class="p-2">
                    <select id="tahun" name="tahun" class="ml-3">
                        <!-- <option value="-">Pilih Tahun</option>   -->
                        <?php foreach ($tahun as $r) : ?>
                            <option value="<?= $r['tahun'] ?>" <?= ($r['tahun'] == $thn) ? "selected" : "" ?>><?= $r['tahun'] ?></option>
                        <?php endforeach; ?>
                    </select>
                    <?= form_error('tahun', '<small class="form-text text-danger">', '</small>'); ?>
                    <button type="submit" id="tombol">Find</button>
                </form>

                <a href="<?= base_url('admin/chooseadd') ?>" class="btn btn-primary p-2">Add Data</a>
                <!-- <a href="<?= base_url('budget/addheaderbudget') ?>" class="btn btn-primary">Add Data</a> -->
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable6" width="100%" cellspacing="0">
                    <thead>
                        <tr style="text-align: center;">
                            <th>No</th>
                            <th>Account</th>
                            <th>PIC</th>
                            <th>Description</th>
                            <!-- <th>Currency</th> -->
                            <th>Budget</th>
                            <th>Actual</th>
                            <th>Remaining</th>
                            <!-- <th>Date</th> -->
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <?php $no = 1;
                        // $user = $this->db->query("SELECT * FROM user where fk_role = '2'");
                        foreach ($bg as $bg) : ?>
                            <tr style="text-align: center;">
                                <!-- <input type="hidden" id="budget" value="<?= $bg['total_budget'] ?>">
                                <input type="hidden" id="actual" value="<?= $bg['debit_actual'] - $bg['credit_actual'] ?>">
                                <input type="hidden" id="remaining" value="<?= $bg['total_budget'] - $bg['debit_actual'] + $bg['credit_actual'] ?>"> -->

                                <td><?= $no; ?></td>
                                <td><?= $bg['id_acc'] ?>.<?= $bg['subacc'] ?>.<?= $bg['product'] ?>.<?= $bg['code_costcen'] ?>.<?= $bg['code_station'] ?>.<?= $bg['company'] ?></td>
                                <td><?= $bg['name_user'] ?> [<?= $bg['division'] ?>-<?= $bg['name_station'] ?>]</td>
                                <td><?= $bg['remark_acc'] ?></td>
                                <!-- <td><?= $bg['category'] ?></td> -->
                                <!-- <td><?= $bg['currency'] ?></td> -->
                                <td id="bdgt<?= $no ?>" data-value="<?= $bg['total_budget'] ?>"><?= number_format($bg['total_budget'], 0, ",", "."); ?> IDR</td>
                                <td id="act<?= $no ?>" data-value="<?= $bg['debit_actual'] - $bg['credit_actual'] ?>"><?= number_format($bg['debit_actual'] - $bg['credit_actual'], 0, ",", "."); ?> IDR</td>
                                <td id="remaining<?= $no ?>" data-value="<?= $bg['total_budget'] - $bg['debit_actual'] + $bg['credit_actual'] ?>"><?= number_format($bg['total_budget'] - $bg['debit_actual'] + $bg['credit_actual'], 0, ",", "."); ?> IDR</td>
                                <td><a href="<?= base_url('budget/datadetailbudget/' . $bg['id_primary']) ?>" type="button" class="fa fa-binoculars" style="color:blue">
                                    </a>
                                </td>
                            </tr>
                        <?php $no++;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- <table>
<tr id='strawberry-planta' data-fruit='12'>
    <td>1</td>
</tr>
</table> -->
<!-- <script>
    // 'Getting' data-attributes using getAttribute
    var plant = document.getElementById('bdgt1');
    var fruitCount = plant.getAttribute('data-value'); // fruitCount = '12'
    console.log(fruitCount)

    // 'Setting' data-attributes using setAttribute
    plant.setAttribute('data-fruit', '7'); // Pesky birds
</script> -->
<script>
    const nodes = document.getElementsByTagName("tr");
    // console.log(nodes);
    for (let i = 1; i < nodes.length; i++) {
        //nodes[i].style.backgroundColor = "red";
        let remaining = document.getElementById("remaining" + [i]);
        let act = document.getElementById("act" + [i]);
        let bdgt = document.getElementById("bdgt" + i);
        // console.log(i);
        var bdgtCount = bdgt.getAttribute('data-value');
        var remCount = remaining.getAttribute('data-value');
        var bdgtCount = bdgt.getAttribute('data-value');
        // console.log(bdgtCount);
        // console.log(bdgt, bdgt.getAttribute('data-value'));
        if (remCount > (bdgtCount * 0.5)) {
            document.getElementById("remaining" + [i]).style.backgroundColor = '#BED7D1	';
        } else if (remCount < (bdgtCount * 0.5) && (remCount > bdgtCount * 0.1)) {
            document.getElementById("remaining" + [i]).style.backgroundColor = '#F7EBC3';
        } else {
            // console.log(remaining); 
            document.getElementById("remaining" + [i]).style.backgroundColor = '#ff85a2';
        }
    }
</script>