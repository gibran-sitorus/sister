<?php
global $koneksi_db;
if (isset ($_POST['submit_login']) && @$_POST['loguser'] == 1){
$login .= aura_login ();
}
if (cek_login ()){

$username	= $_SESSION['UserName'];
$levelakses = $_SESSION['LevelAkses'];

if ($levelakses=="Administrator"){
echo '<div class="border2">
<table width="100%"><tr align="center">
<td>
<a href="admin.php"><img src="images/home.jpg" width="50px"><br>BERANDA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnmaster&mod=yes"><img src="images/master.jpg" width="50px"><br>MASTER</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnpembelian&mod=yes"><img src="images/order.png" width="50px"><br>PEMBELIAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnpenjualan&mod=yes"><img src="images/order.png" width="50px"><br>PENJUALAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnpenjualanjasa&mod=yes"><img src="images/produkjasa.png" width="50px"><br>JASA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnhutangpiutang&mod=yes"><img src="images/uang.jpg" width="50px"><br>HUTANG/PIUTANG</a>&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnpenjualanbiaya&mod=yes"><img src="images/biaya.png" width="50px"><br>BIAYA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnlaporan&mod=yes"><img src="images/report.png" width="50px" height="50px"><br>LAPORAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=user&mod=yes"><img src="images/userlogin.jpg" width="50px"><br>USER</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=settingwebsite&mod=yes"><img src="images/password.jpg" width="50px"><br>PASSWORD</a>&nbsp;&nbsp;
</td>
<td>
<a href="index.php?aksi=logout"><img src="images/logout.jpg" width="50px"><br>KELUAR</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
}

if ($levelakses=="Penjualan"){
echo '<div class="border2">
<table width="100%"><tr align="center">
<td>
<a href="admin.php"><img src="images/home.jpg" width="50px"><br>BERANDA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnpenjualan&mod=yes"><img src="images/order.png" width="50px"><br>PENJUALAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=settingwebsite&mod=yes"><img src="images/password.jpg" width="50px"><br>PASSWORD</a>&nbsp;&nbsp;
</td>
<td>
<a href="index.php?aksi=logout"><img src="images/logout.jpg" width="50px"><br>KELUAR</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
}

if ($levelakses=="Kasir"){
echo '<div class="border2">
<table width="100%"><tr align="center">
<td>
<a href="admin.php"><img src="images/home.jpg" width="50px"><br>BERANDA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnhutangpiutang&mod=yes"><img src="images/uang.jpg" width="50px"><br>PEMBAYARAN</a>&nbsp;
</td>
<td>
<a href="admin.php?pilih=settingwebsite&mod=yes"><img src="images/password.jpg" width="50px"><br>PASSWORD</a>&nbsp;&nbsp;
</td>
<td>
<a href="index.php?aksi=logout"><img src="images/logout.jpg" width="50px"><br>KELUAR</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
}

if ($levelakses=="Gudang"){
echo '<div class="border2">
<table width="100%"><tr align="center">
<td>
<a href="admin.php"><img src="images/home.jpg" width="50px"><br>BERANDA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=stok&mod=yes"><img src="images/uang.jpg" width="50px"><br>STOK</a>&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnlaporan&mod=yes"><img src="images/report.png" width="50px" height="50px"><br>LAPORAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=settingwebsite&mod=yes"><img src="images/password.jpg" width="50px"><br>PASSWORD</a>&nbsp;&nbsp;
</td>
<td>
<a href="index.php?aksi=logout"><img src="images/logout.jpg" width="50px"><br>KELUAR</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
}

if ($levelakses=="Accounting"){
echo '<div class="border2">
<table width="100%"><tr align="center">
<td>
<a href="admin.php"><img src="images/home.jpg" width="50px"><br>BERANDA</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=stok&mod=yes"><img src="images/uang.jpg" width="50px"><br>STOK</a>&nbsp;
</td>
<td>
<a href="admin.php?pilih=mnlaporan&mod=yes"><img src="images/report.png" width="50px" height="50px"><br>LAPORAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=settingwebsite&mod=yes"><img src="images/password.jpg" width="50px"><br>PASSWORD</a>&nbsp;&nbsp;
</td>
<td>
<a href="index.php?aksi=logout"><img src="images/logout.jpg" width="50px"><br>KELUAR</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
}
echo $login;
}
?>