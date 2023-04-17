<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('user/')?>">
        <img src="<?= base_url('fotouser/logo5.png')?>" style="width:150%;">
        
        <div class="sidebar-brand-text mx-3">SYMBA</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('user/')?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
        </li>

        <?php 
        $no = 1;
        foreach ($user as $user) : 
        if($user['id_role'] == '3'){ ?>                  
        <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('user/addbudget') ?>">
                <i class="fas fa-fw fa-table"></i>
                <span>Add Budget</span>
            </a>
            <!-- <a class="nav-link" href="<?= base_url('user/dataactual') ?>">
                <i class="fas fa-fw fa-table"></i>
                <span>Add Aktual</span>
            </a> -->
        </li>
        <?php };
        ?>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <!-- Nav Item - Tables -->
            <li class="nav-item">

            </li>

            <!-- Divider -->
            <!-- <hr class="sidebar-divider d-none d-md-block"> -->

            <!-- Sidebar Toggler (Sidebar) -->
            <!-- <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div> -->

        </ul>
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4 mt-4">
                        <!-- <h1 class="h3 mb-0 text-gray-800" style="font-family: Garamond,serif; font-size: 35px"> -->
                            <h1 class="h3 mb-0 text-gray-800" style="font-family:Inter,sans-serif,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol">Dashboard</h1>

                        </div>
                        <!-- Sidebar Toggle (Topbar) -->

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                            aria-labelledby="searchDropdown">
                        </div>
                    </li>
                    <div class="topbar-divider d-none d-sm-block"></div>
<!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    <?= $user['name_user']?></span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<?= base_url('user/change_password')?>">
                                    <i class="fas fa-key fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Ubah Password
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                            </div>
                        </li>
                    <!-- Nav Item - User Information -->
                    <!-- <li class="nav-item dropdown no-arrow">

                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </li> -->

                </ul>
                <?php 
$no++;
        endforeach; ?>
            </nav>
<!-- End of Topbar -->