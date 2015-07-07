<?php

if (!defined('AURACMS_admin')) {
	Header("Location: ../../../index.php");
	exit;
}

if (!cek_login ()){
   $admin .='<p class="judul">Access Denied !!!!!!</p>';
   exit;
}
$style_include[] = '<link rel="stylesheet" media="screen" href="mod/calendar/css/dynCalendar.css" />';
$admin .= '
<script language="javascript" type="text/javascript" src="mod/calendar/js/browserSniffer.js"></script>
<script language="javascript" type="text/javascript" src="mod/calendar/js/dynCalendar.js"></script>';
$tanggal= <<<eof
<script language="JavaScript" type="text/javascript">   
    /**
    * Example callback function
    */
    /*<![CDATA[*/
    function exampleCallback_ISO3(date, month, year)
    {
        if (String(month).length == 1) {
            month = '0' + month;
        }
    
        if (String(date).length == 1) {
            date = '0' + date;
        }    
        document.forms['posts'].tgl.value = year + '-' + month + '-' + date;
    }
    calendar3 = new dynCalendar('calendar3', 'exampleCallback_ISO3');
    calendar3.setMonthCombo(true);
    calendar3.setYearCombo(true);
/*]]>*/     
</script>
eof;
$tanggal1= <<<eof
<script language="JavaScript" type="text/javascript">   
    /**
    * Example callback function
    */
    /*<![CDATA[*/
    function exampleCallback_ISO1(date, month, year)
    {
        if (String(month).length == 1) {
            month = '0' + month;
        }
    
        if (String(date).length == 1) {
            date = '0' + date;
        }    
        document.forms['posts'].tgl1.value = year + '-' + month + '-' + date;
    }
    calendar1 = new dynCalendar('calendar1', 'exampleCallback_ISO1');
    calendar1.setMonthCombo(true);
    calendar1.setYearCombo(true);
/*]]>*/     
</script>
eof;
$tanggal2= <<<eof
<script language="JavaScript" type="text/javascript">   
    /**
    * Example callback function
    */
    /*<![CDATA[*/
    function exampleCallback_ISO2(date, month, year)
    {
        if (String(month).length == 1) {
            month = '0' + month;
        }
    
        if (String(date).length == 1) {
            date = '0' + date;
        }    
        document.forms['posts'].tgl2.value = year + '-' + month + '-' + date;
    }
    calendar2 = new dynCalendar('calendar2', 'exampleCallback_ISO2');
    calendar2.setMonthCombo(true);
    calendar2.setYearCombo(true);
/*]]>*/     
</script>
eof;
$JS_SCRIPT.= <<<js
<script language="JavaScript" type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable();
} );
</script>
js;
$script_include[] = $JS_SCRIPT;
global $maxadmindata;

if (isset ($_GET['pg'])) $pg = int_filter ($_GET['pg']); else $pg = 0;
if (isset ($_GET['stg'])) $stg = int_filter ($_GET['stg']); else $stg = 0;
if (isset ($_GET['offset'])) $offset = int_filter ($_GET['offset']); else $offset = 0;

$admin  .='<legend>Administrasi Pinjaman Karyawan</legend>';

$admin .='<ol class="breadcrumb">
<li><a href="?pilih=pinjaman&amp;mod=yes">Data Karyawan</a></li>
<li><a href="?pilih=pinjaman&amp;mod=yes&amp;aksi=laporan">Laporan Peminjaman Karyawan</a></li>
</ol>';

###################################
# List karyawan
###################################
if($_GET['aksi']==""){

$admin .='<h5 class="bg"><b>Data Karyawan</b></h5>';
$admin.='
<table id="example"class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
<tr>
<th width="10%">NIP</th>
<th>Nama</th>
<th>Tgl Pinjam</th>
<th>Jumlah Pinjaman</th>
<th>Total Bayar</th>
<th>Sisa Bayar</th>
<th width="20%">Aksi</th>
</tr>
</thead>';
$admin.='<tbody>';
$query = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan where tipe='1'" );
while ($data = $koneksi_db->sql_fetchrow($query)) {
$gambar = $data['foto'];
$id = $data['id'];
$nip=$data['nip'];
$nama=$data['nama'];
$query2 = mysql_query ("SELECT pinjaman AS total_pinjaman,id,tgl FROM hrd_pinjaman where karyawan=$id order by tgl desc limit 1");
$get2	= mysql_fetch_assoc($query2);
$jumlah2 = $get2['total_pinjaman'];
$pid = $get2['id'];
$tgl=$get2['tgl'];
$tgl = datetimes($get2['tgl'],false,false);
$querybayar = mysql_query ("SELECT sum(bayar) AS total_bayar FROM hrd_bayar where pid=$pid");
$getbayar	= mysql_fetch_assoc($querybayar);
$jumlahbayar = $getbayar['total_bayar'];
$sisabayar=$jumlah2-$jumlahbayar;
$admin.='<tr>
<td>'.$nip.'</td>
<td>'.$nama.'</td>';
$admin.="<td>$tgl</td>";
$admin.="<td>$jumlah2</td>";
$admin.="<td>$jumlahbayar</td>";
$admin.="<td>$sisabayar</td>";
$admin.='
<td><a class="text-info" href="?pilih=pinjaman&amp;mod=yes&amp;aksi=list_pinjaman&amp;id='.$data['id'].'"><span class="btn btn-success">List</span></a>  
<a class="text-info" href="?pilih=pinjaman&amp;mod=yes&amp;aksi=add_pinjaman&amp;id='.$data['id'].'"><span class="btn btn-danger">Tambah Pinjaman</span></a>
</tr>';
}
$admin .= '</tbody></table>';
}

###################################
# Tambah Pinjaman
###################################
if($_GET['aksi']=="add_pinjaman"){

$id     = int_filter($_GET['id']);

$s = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id");
$datas = $koneksi_db->sql_fetchrow($s);
$nama = $datas['nama'];

$admin .='<h5 class="bg">Tambah Pinjaman karyawan dengan nama <strong>'.$nama.'</strong></h5>';

if (isset($_POST['submit'])){
	define("GIS_GIF", 1);
define("GIS_JPG", 2);
define("GIS_PNG", 3);
define("GIS_SWF", 4);

include "includes/hft_image.php";
$nip  			= $_POST['nip'];
$tgl  			= $_POST['tgl'];
$pinjaman  			= $_POST['pinjaman'];
$sisabayar  			= $_POST['sisabayar'];
$total = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE nip = '".$_POST['nip']."' and id != '".$id."'");
$jumlah = $koneksi_db->sql_numrows( $total );


$error = '';
if ($sisabayar>0)  $error .= "Error: Harap Melunasi Pinjaman sebelumnya!<br />";
if ($jumlah) $error .= "Error: NIP karyawan $nip sudah ada di dalam database!<br />";
if (!$nip)  $error .= "Error: NIP wajib diisi!<br />";
if (!$tgl)  $error .= "Error: tanggal wajib diisi!<br />";
if (!$pinjaman)  $error .= "Error: Pinjaman wajib diisi!<br />";
if ($error){
$admin.='<div class="alert alert-danger">'.$error.'</div>';
}else{
$hasil = $koneksi_db->sql_query( "INSERT INTO hrd_pinjaman (tgl,pinjaman,karyawan) VALUES ('$tgl','$pinjaman','$id')" );
		$admin.='<div class="sukses">Penambahan Pinjaman berhasil! .</div>';    
		$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=pinjaman&mod=yes" />';  
}
}

$hasil = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id" );
$data = $koneksi_db->sql_fetchrow($hasil);
$idkary  			= $data['id'];
$nip  			= $data['nip'];
$nama     		= text_filter($data['nama']);
$departemen 	= $data['departemen'];
$jabatan		= $data['jabatan'];
$status		= $data['status'];
$fotolama 	= $data['foto'];
$query2 = mysql_query ("SELECT pinjaman AS total_pinjaman,id,tgl FROM hrd_pinjaman where karyawan=$id order by id desc limit 1");
$get2	= mysql_fetch_assoc($query2);
$jumlah2 = $get2['total_pinjaman'];
$pid = $get2['id'];
$querybayar = mysql_query ("SELECT sum(bayar) AS total_bayar FROM hrd_bayar where pid=$pid");
$getbayar	= mysql_fetch_assoc($querybayar);
$jumlahbayar = $getbayar['total_bayar'];
$sisabayar=$jumlah2-$jumlahbayar;

$admin .= '<form class="form-inline" method="post" action="" enctype ="multipart/form-data" id="posts">
<table class="table table-striped table-hover">
<tr>
	<td>Foto</td>
	<td></td>
</tr>';
if(!$fotolama){
$fotolama='profile-default.jpg';
}
$admin .='<tr>
	<td></td>
	<td><img src="mod/karyawan/images/normal/'.$fotolama.'" height="120">
	<input type="hidden" name="fotolama" value="'.$fotolama.'"></td>
</tr>
<tr>
	<td>NIP</td>
	<td><input type="hidden" name="nip" value="'.$nip.'">'.$nip.'</td>
</tr>
<tr>
	<td>Nama Lengkap</td>
	<td>
	<input type="hidden" name="nama" value="'.$nama.'">'.$nama.'
	</td>
</tr>
<tr>
	<td>Departemen</td>
	<td><input type="hidden" name="departemen" value="'.$departemen.'">'.getdepartemen($departemen).'</td>
</tr>
<tr>
	<td>Jabatan</td>
	<td><input type="hidden" name="jabatan" value="'.$jabatan.'">'.getjabatan($jabatan).'</td>
</tr>
<tr>
	<td>Status</td>
	<td><input type="hidden" name="status" value="'.$status.'">'.getstatus($status).'</td>
</tr>
<tr>
	<td>Sisa Bayar Sebelumnya</td>
	<td><input type="hidden" name="sisabayar" value="'.$sisabayar.'">'.$sisabayar.'</td>
</tr>
<tr>
	<td>Tanggal</td>
	<td><input type="text" name="tgl" size="75" class="form-control">'.$tanggal.'</td>
</tr>
<tr>
	<td>Pinjaman</td>
	<td><input type="text" name="pinjaman" size="75" class="form-control"></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Simpan" name="submit" class="btn btn-success"></td>
	</tr>
<tr>
';
$admin .= '</table></form>';
}

###################################
# Tambah Bayar
###################################
if($_GET['aksi']=="add_bayar"){

$id     = int_filter($_GET['idkary']);
$pid     = int_filter($_GET['pid']);
$s = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id");
$datas = $koneksi_db->sql_fetchrow($s);
$nama = $datas['nama'];

$admin .='<h5 class="bg">Bayar Hutang karyawan dengan nama <strong>'.$nama.'</strong></h5>';

if (isset($_POST['submit'])){
	define("GIS_GIF", 1);
define("GIS_JPG", 2);
define("GIS_PNG", 3);
define("GIS_SWF", 4);

include "includes/hft_image.php";
$nip  			= $_POST['nip'];
$tgl  			= $_POST['tgl'];
$bayar  			= $_POST['bayar'];
$tsisabayar  			= $_POST['tsisabayar'];
$total = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE nip = '".$_POST['nip']."' and id != '".$id."'");
$jumlah = $koneksi_db->sql_numrows( $total );

$error = '';
if ($jumlah) $error .= "Error: NIP karyawan $nip sudah ada di dalam database!<br />";
if (!$nip)  $error .= "Error: NIP wajib diisi!<br />";
if (!$tgl)  $error .= "Error: tanggal wajib diisi!<br />";
if (!$bayar)  $error .= "Error: Bayar wajib diisi!<br />";
if ($bayar>$tsisabayar)  $error .= "Error: Nilai Pembayaran lebih Besar dari Sisa yang harus dibayar!<br />";
if ($tsisabayar=='0')  $error .= "Error: Telah DiLunasi!<br />";
if ($error){
$admin.='<div class="alert alert-danger">'.$error.'</div>';
}else{
$hasil = $koneksi_db->sql_query( "INSERT INTO hrd_bayar (tgl,bayar,karyawan,pid) VALUES ('$tgl','$bayar','$id','$pid')" );
		$admin.='<div class="sukses">Pembayaran Pinjaman berhasil! .</div>';    
		$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=pinjaman&mod=yes" />';  
}
}

$hasil = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id" );
$data = $koneksi_db->sql_fetchrow($hasil);
$idkary  			= $data['id'];
$nip  			= $data['nip'];
$nama     		= text_filter($data['nama']);
$departemen 	= $data['departemen'];
$jabatan		= $data['jabatan'];
$status		= $data['status'];
$fotolama 	= $data['foto'];
$query2 = mysql_query ("SELECT pinjaman AS total_pinjaman FROM hrd_pinjaman where id=$pid");
$get2	= mysql_fetch_assoc($query2);
$tpinjaman = $get2['total_pinjaman'];
$query3 = mysql_query ("SELECT sum(bayar) AS total_bayar FROM hrd_bayar where pid=$pid");
$get3	= mysql_fetch_assoc($query3);
$tbayar = $get3['total_bayar'];
$tsisabayar=$tpinjaman-$tbayar;
$admin .= '<form class="form-inline" method="post" action="" enctype ="multipart/form-data" id="posts">
<table class="table table-striped table-hover">
<tr>
	<td>Foto</td>
	<td></td>
</tr>';
if(!$fotolama){
$fotolama='profile-default.jpg';
}
$admin .='<tr>
	<td></td>
	<td><img src="mod/karyawan/images/normal/'.$fotolama.'" height="120">
	<input type="hidden" name="fotolama" value="'.$fotolama.'"></td>
</tr>
<tr>
	<td>NIP</td>
	<td><input type="hidden" name="nip" value="'.$nip.'">'.$nip.'</td>
</tr>
<tr>
	<td>Nama Lengkap</td>
	<td>
	<input type="hidden" name="nama" value="'.$nama.'">'.$nama.'
	</td>
</tr>
<tr>
	<td>Departemen</td>
	<td><input type="hidden" name="departemen" value="'.$departemen.'">'.getdepartemen($departemen).'</td>
</tr>
<tr>
	<td>Jabatan</td>
	<td><input type="hidden" name="jabatan" value="'.$jabatan.'">'.getjabatan($jabatan).'</td>
</tr>
<tr>
	<td>Status</td>
	<td><input type="hidden" name="status" value="'.$status.'">'.getstatus($status).'</td>
</tr>
<tr>
	<td>Sisa yang harus Dibayar</td>
	<td><input type="hidden" name="tsisabayar" value="'.$tsisabayar.'">'.$tsisabayar.'</td>
</tr>
<tr>
	<td>Tanggal</td>
	<td><input type="text" name="tgl" size="75" class="form-control">'.$tanggal.'</td>
</tr>
<tr>
	<td>Bayar</td>
	<td><input type="text" name="bayar" size="75" class="form-control"></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Simpan" name="submit" class="btn btn-success"></td>
	</tr>
<tr>
';
$admin .= '</table></form>';
}

if($_GET['aksi']=="list_pinjaman"){

$id     = int_filter($_GET['id']);

$s = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id");
$datas = $koneksi_db->sql_fetchrow($s);
$nama = $datas['nama'];

$admin .='<h5 class="bg">List Pinjaman <strong>'.$nama.'</strong></h5>';

$hasil = $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan WHERE id=$id" );
$data = $koneksi_db->sql_fetchrow($hasil);
$idkary  			= $data['id'];
$nip  			= $data['nip'];
$nama     		= text_filter($data['nama']);
$departemen 	= $data['departemen'];
$jabatan		= $data['jabatan'];
$status		= $data['status'];
$fotolama 	= $data['foto'];

$admin .= '<form class="form-inline" method="post" action="" enctype ="multipart/form-data" id="posts">
<table class="table table-striped table-hover">
<tr>
	<td>Foto</td>
	<td></td>
</tr>';
if(!$fotolama){
$fotolama='profile-default.jpg';
}
$admin .='<tr>
	<td></td>
	<td><img src="mod/karyawan/images/normal/'.$fotolama.'" height="120">
	<input type="hidden" name="fotolama" value="'.$fotolama.'"></td>
</tr>
<tr>
	<td>NIP</td>
	<td><input type="hidden" name="nip" value="'.$nip.'">'.$nip.'</td>
</tr>
<tr>
	<td>Nama Lengkap</td>
	<td>
	<input type="hidden" name="nama" value="'.$nama.'">'.$nama.'
	</td>
</tr>
<tr>
	<td>Departemen</td>
	<td><input type="hidden" name="departemen" value="'.$departemen.'">'.getdepartemen($departemen).'</td>
</tr>
<tr>
	<td>Jabatan</td>
	<td><input type="hidden" name="jabatan" value="'.$jabatan.'">'.getjabatan($jabatan).'</td>
</tr>
<tr>
	<td>Status</td>
	<td><input type="hidden" name="status" value="'.$status.'">'.getstatus($status).'</td>
</tr>
</table></form>';
}

if($_GET['aksi'] =='hapus_photo'){
$idkary = int_filter ($_GET['idkary']);
$id = int_filter ($_GET['id']);
$hapus = mysql_query ("DELETE FROM `hrd_pinjaman` WHERE `id`='$id'");	
if ($hapus){
$admin .= '<div class="sukses">Berhasil Dihapus</div>';	
$style_include[] ='<meta http-equiv="refresh" content="3; url=admin.php?pilih=pinjaman&mod=yes&aksi=add_pinjaman&id='.$idkary.'" />';
}else {
$admin .= '<div class="error">Gagal dihapus</div>';	
}
}

if(($_GET['aksi'] =='add_pinjaman')or($_GET['aksi'] =='list_pinjaman')){
$admin .='<h5 class="bg">Detail Pinjaman <strong>'.$nama.'</strong></h5>';
$admin.='
<table id="example"class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
<tr>
<th>Tanggal</th>
<th>Jumlah Pinjaman</th>
<th>Jumlah Bayar</th>
<th>Sisa Bayar</th>
<th width="20%">Aksi</th>
</tr>
</thead>';
$admin.='<tbody>';
$s = mysql_query ("SELECT * FROM `hrd_pinjaman`where karyawan='$id' order by id desc");	
while($datas = mysql_fetch_array($s)){
$urutan = $no + 1;
$idphoto = $datas['id'];
$tgl = $datas['tgl'];
$pinjaman = $datas['pinjaman'];
$querybayar = mysql_query ("SELECT sum(bayar) AS total_bayar FROM hrd_bayar where pid=$idphoto");
$getbayar	= mysql_fetch_assoc($querybayar);
$jumlahbayar = $getbayar['total_bayar'];
$sisabayar=$pinjaman-$jumlahbayar;
$deleted = '<a href="admin.php?pilih=pinjaman&mod=yes&aksi=hapus_photo&id='.$idphoto.'&idkary='.$idkary.'" onclick="return confirm(\'Apakah Anda Ingin Menghapus Data Ini ?\')" style="color:red"><span class="btn btn-danger">Hapus</span></a>';
$dibayar = '<a href="admin.php?pilih=pinjaman&mod=yes&aksi=add_bayar&pid='.$idphoto.'&idkary='.$idkary.'" style="color:red"><span class="btn btn-success">Bayar</span></a>';
$admin.='<tr>
<td>'.datetimes($tgl,False,false).'</td>
<td>'.$pinjaman.'</td>
<td>'.$jumlahbayar.'</td>
<td>'.$sisabayar.'</td>
<td>'.$deleted.' '.$dibayar.'</td>';
$admin.='</tr>';
}
$admin .= '</table>';
}

if($_GET['aksi']=="laporan"){
$tglnow = date("Y-m-d");
$tgl1 		= !isset($tgl1) ? $tglnow : $tgl1;
$tgl2 		= !isset($tgl2) ? $tglnow : $tgl2;
$admin .= "* Apabila tidak dapat melakukan print, klik kanan pilih open link New Tab";
$admin .= '<form class="form-inline" method="post" action="" enctype ="multipart/form-data" id="posts">
<table class="table table-bordered">
<tr>
	<td>Tanggal Awal</td>
	<td><input type="text" name="tgl1" value="'.$tgl1.'" size="10" class="form-control">'.$tanggal1.'</td>
	<td>Tanggal Akhir</td>
	<td><input type="text" name="tgl2" value="'.$tgl2.'" size="10" class="form-control">'.$tanggal2.'</td>
	<td><input type="submit" value="Lihat" name="submit" class="btn btn-success"></td>
	</tr>
</table></form>';
if (isset($_POST['submit'])){
$tgl1		= $_POST['tgl1'];
$tgl2			= $_POST['tgl2'];
$cetaklaporan = '<a href="cetak_lpinjaman.php?tgl1='.$tgl1.'&tgl2='.$tgl2.'" target="new"onclick="return confirm(\'Apakah Anda Ingin Mencetak Laporan Peminjaman ?\')" style="color:blue"><span class="btn btn-danger">Cetak Laporan</span></a>';
$admin .='<legend><b>Laporan Pinjaman Dari '.datetimes($tgl1,False,false).' Sampai '.datetimes($tgl2,false,false).' '.$cetaklaporan.'</legend>';
$admin.='
<table id="example"class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
<tr>
<td>NIP</td>
<td>Nama</td>
<td>Tanggal</td>
<td>Pinjaman</td>
<td>Bayar</td>
<td>Sisa Bayar</td>
</tr>
</thead>';
$admin.='<tbody>';
$s = mysql_query ("SELECT  * FROM  `hrd_pinjaman`where tgl between '$tgl1' and '$tgl2' order by tgl ASC");
while($datas = mysql_fetch_array($s)){
$pid = $datas['id'];
$tgl = $datas['tgl'];
$pinjaman 	= $datas['pinjaman'];
$idkary = $datas['karyawan'];
$urutan = $no + 1;
$hasil =  $koneksi_db->sql_query( "SELECT * FROM hrd_karyawan where id='$idkary'" );
$data = $koneksi_db->sql_fetchrow($hasil);
$nip=$data['nip'];
$nama=$data['nama'];
$hasilb =  $koneksi_db->sql_query( "SELECT sum(bayar) as bayar FROM hrd_bayar where pid='$pid'" );
$datab = $koneksi_db->sql_fetchrow($hasilb);
$bayar = $datab['bayar'];
//$cetak = '<a href="cetak_slip.php?id='.$idphoto.'&idkary='.$idkary.'" target="new"onclick="return confirm(\'Apakah Anda Ingin Mencetak Penggajian Ini ?\')" style="color:blue"><span class="btn btn-warning">Slip</span></a>';
$sisabayar = $pinjaman - $bayar;
if(!$bayar){
$bayar='0';
}
$admin .= '
<tr align="left">
<td class="text-center">'.$nip.'</td>
<td>'.$nama.'</td>
<td>'.datetimes($tgl,false,false).'</td>
<td>'.$pinjaman.'</td>
<td>'.$bayar.'</td>
<td>'.$sisabayar.'</td>
</tr>';
$tsisabayar += $sisabayar;
$tpinjaman += $pinjaman;
$tbayar += $bayar;
}
$admin .= '</table>';/*
$admin .= '<table width="100%">
<tr>
<td colspan="3">Jumlah</td>
<td>'.$tpinjaman.'</td>
<td>'.$tbayar.'</td>
<td>'.$tsisabayar.'</td>
</tr>
</tr>';
$admin .= '</table>';*/
}
}


echo $admin;

?>