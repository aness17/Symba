    <div class="container-fluid">
        <div class="row ml-1">
            <div class="col-lg-12">
                <!-- Project Card Example -->
                <div class="card shadow mb-12">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Upload Actual Budget</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="<?= base_url('actual/upload')?>" class="row g-3" enctype="multipart/form-data">           
                            <div class="col-12">
                                <label class="col-form-label text-md-left"><span class="text-danger">*</span>Upload File</label> 
                                <input type="file" class="form-control" name="file" accept=".xls, .xlsx" id="exampleInputFile" required>
                                <div class="mt-1">
                                    <span class="text-secondary">File yang harus diupload : .xls, .xlsx</span>
                                </div>
                                <?= form_error('file','<div class="text-danger">','</div>') ?>
                                    
                                <!-- <label for="exampleInputFile" class="form-label"><span class="text-danger">*</span>File Upload</label>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="file_upload" id="exampleInputFile">
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div> -->
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
</main><!-- End #main -->