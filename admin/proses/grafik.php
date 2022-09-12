<!DOCTYPE html>
<?php
include("style/header.php");
include("style/sidebar.php");
include '../../config/koneksi.php';
$idp = $_GET['idp'];

$sql = mysqli_query($konek,"SELECT * FROM hasil a LEFT JOIN alternatif b ON a.id_alternatif=b.id_alternatif WHERE a.id_periode = '$idp'");
    while($row = mysqli_fetch_array($sql)){
        $nama_alternatif = $row['nama_alternatif'];
        $hasil = $row['hasil'];
    }

?>

<!DOCTYPE html>
<html>
<head>
    <title>Chart</title>
    <script type="text/javascript" src="../../assets/vendor/chart.js/Chart.js"></script>
</head>
<body>
  <div class="wrapper">
    <section class="content-wrapper">
    <div class="container-fluid">
     <div class="row">
        <div class="col-lg-12">
        <!-- Basic Card Example -->
        <div class="card shadow mt-3 mb-3">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-olive">Grafik Hasil Keputusan</h6>
            </div>

            <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 350px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
            </div>

            <script>
                var ctx = document.getElementById("barChart").getContext('2d'); 
                var data = {
                        labels: [<?php while ($row = mysqli_fetch_array($nama_alternatif)) {echo '"'.$row['nama_alternatif'].'",';}?>],
                        datasets: [{
                            label: '',
                            data: [
                            <?php
                                while ($row = mysqli_fetch_array($hasil)) {echo '"'.$row['hasil'].'",';}
                            ?>
                            ],
                            backgroundColor: ['rgba(255, 206, 86, 0.2)'],
                            borderColor: ['rgba(255, 206, 86, 1)'],
                            borderWidth: 1
                        }]
                }
                var barChart = new Chart(ctx, {
                    type: 'bar',
                    data: data,
                    options: {
                        legend:{
                            display: false
                        },
                        barValueSpacing:20,
                        scales: {
                            yAxes: [{
                                ticks:{
                                    min: 0,
                                }
                            }],
                            xAxes: [{
                                gridLines: {
                                    color: "rgba(0,0,0,0)",
                                }
                            }]
                        }
                    }
                }
                });
            </script>
        </div>
        </div>
     </div>
    </div>
    </div>
  </section> 

  <section class="content-wrapper">
    <div class="container-fluid">
     <div class="row">
        <div class="col-lg-12">
        <!-- Basic Card Example -->
        <div class="card shadow mt-3 mb-3">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-olive">Grafik Penilaian</h6>
            </div>

            <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 350px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
            </div>

            <script>
                var ctx = document.getElementById("barChart").getContext('2d'); 
                var data = {
                        labels: [<?php while ($row = mysqli_fetch_array($nama_alternatif)) {echo '"'.$row['nama_alternatif'].'",';}?>],
                        datasets: [{
                            label: '',
                            data: [
                            <?php
                                while ($row = mysqli_fetch_array($hasil)) {echo '"'.$row['hasil'].'",';}
                            ?>
                            ],
                            backgroundColor: ['rgba(255, 206, 86, 0.2)'],
                            borderColor: ['rgba(255, 206, 86, 1)'],
                            borderWidth: 1
                        }]
                }
                var barChart = new Chart(ctx, {
                    type: 'bar',
                    data: data,
                    options: {
                        legend:{
                            display: false
                        },
                        barValueSpacing:20,
                        scales: {
                            yAxes: [{
                                ticks:{
                                    min: 0,
                                }
                            }],
                            xAxes: [{
                                gridLines: {
                                    color: "rgba(0,0,0,0)",
                                }
                            }]
                        }
                    }
                }
                });
            </script>
        </div>
        </div>
     </div>
    </div>
    </div>
  </section> 
  </div>
</body>
</html>>