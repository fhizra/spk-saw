<?php  
$idp = $_GET['idp'];
  session_start();
    include ('../../config/koneksi.php');
    if($_SESSION['username']==""){
      echo "<script language=javascript>
          window.location='../../login.php';
          </script>";
    }
?>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../rekap.php" class="nav-link">Kembali</a>
      </li>
    </ul>
        <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="logout.php">
          <i class="fas fa-fw fa-sign-out-alt text-info"></i>
          <span>
            <i class="text-info">Logout</i>
          </span>
        </a>
      </li>
    </ul>

  </nav>

  <!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-1">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link" align="center">
      <i class="nav-icon fas fa-user-alt text-teal"></i>
      <span class="brand-text font-weight text-teal">&nbsp&nbsp<?php echo ucfirst ($_SESSION['username']);?></span>
    </a>

    <!-- Sidebar Menu -->
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div>
            <a href="./index.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-tachometer-alt"></i>
              <span>Dashboard</span>
            </a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-header">Data</li>

          <li class="nav-item">
            <a href="data_alternatif.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-database text-danger"></i>
              <p>
                Alternatif
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="data_penilaian.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-database text-warning"></i>
              <p>
                Penilaian
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="proses.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-database text-olive"></i>
              <p>
                Proses Perhitungan
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="hasil_keputusan.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-database text-purple"></i>
              <p>
                Hasil Keputusan
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="grafik.php?idp=<?php echo $idp; ?>" class="nav-link">
              <i class="fas fa-fw fa-database text-fuchsia"></i>
              <p>
                Grafik
              </p>
            </a>
          </li>

          <li class="nav-header">Laporan</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-print text-lightblue"></i>
              <p>
                Laporan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="cetak_alt.php?idp=<?php echo $idp; ?>" target="_Blank" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Alternatif</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="cetak_nilai.php?idp=<?php echo $idp; ?>" target="_BLANK" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Penilaian</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="cetak_hasil.php?idp=<?php echo $idp; ?>" target="_BLANK" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Hasil Keputusan</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>

    </div>
</aside>