<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('admin/') ?>"><img src="<?= base_url('fotouser/logo5.png')?>" style="width:150%;">
        <!-- <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div> -->
        <div class="sidebar-brand-text mx-3">SYMBA</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('admin/')?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Data Master
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-folder"></i>
                <span>Master Data</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Master Data</h6>
                    <a class="collapse-item" href="<?= base_url('admin/dpt')?>">Departement Data</a>
                    <!-- <a class="collapse-item" href="<?= base_url('admin/items')?>">Items Data</a> -->   
                    <a class="collapse-item" href="<?= base_url('admin/Account')?>">Account Data</a>
                    <a class="collapse-item" href="<?= base_url('admin/lob')?>">LOB Data</a>
                    <a class="collapse-item" href="<?= base_url('admin/station')?>">Station Data</a>
                    <a class="collapse-item" href="<?= base_url('admin/roles')?>">Roles Data</a>
                    <a class="collapse-item" href="<?= base_url('admin/costcen')?>">Cost Center Data</a>
                    <!-- <a class="collapse-item" href="<?= base_url('admin/master')?>">Master</a> -->

                </div>
            </div>
            <a class="nav-link" href="<?= base_url('admin/user')?>">
                <i class="fas fa-fw fa-folder"></i>
                <span>User Data</span>
            </a>
            <a class="nav-link" href="<?= base_url('admin/dvn')?>">
                <i class="fas fa-fw fa-folder"></i>
                <span>Division Data</span>
            </a>
            <!-- <a class="nav-link" href="<?= base_url('admin/')?>">
                <i class="fas fa-fw fa-folder"></i>
                <span>User Access</span>
            </a> -->

            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Data Budget
            </div>
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('budget/databudget')?>">
                    <i class="fas fa-database"></i>
                    <span>Data Budget</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('actual/dataactual')?>">
                        <i class="fas fa-database"></i>
                        <span>All Data Actual</span>
                    </a>
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

                    <a class="dropdown-item" data-toggle="modal" data-target="#logoutModal">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        Logout
                    </a>
                </li>

            </ul>

        </nav>
<!-- End of Topbar