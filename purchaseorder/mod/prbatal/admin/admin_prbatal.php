<?php
if (!defined('AURACMS_admin')) {
    Header("Location: ../index.php");
    exit;
}

if (!cek_login()){
    header("location: index.php");
    exit;
} else{

$JS_SCRIPT.= <<<js
<script language="JavaScript" type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable({
    "iDisplayLength":50});
} );
</script>
js;

$script_include[] = $JS_SCRIPT;
	
//$index_hal=1;	
	$admin  .='<legend>PEMBATALAN PURCHASE REQUISITION (PR)</legend>';

$admin .='<div class="panel panel-info">';
$admin .= '<script type="text/javascript" language="javascript">
   function GP_popupConfirmMsg(msg) { //v1.0
  document.MM_returnValue = confirm(msg);
}
</script>';

if ($_GET['aksi'] == ''){
$kodepr     = $_POST['kodepr'];  
if(isset($_POST['batalhapus'])){
$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=prbatal&mod=yes" />';
}
if(isset($_POST['hapuspr'])){
$nopr     = $_POST['kode'];
$hasil = $koneksi_db->sql_query("DELETE FROM `po_prdetail` WHERE `nopr`='$nopr'");$hasil = $koneksi_db->sql_query("DELETE FROM `po_pr` WHERE `nopr`='$nopr'");    
	if($hasil){    
		$admin.='<div class="sukses">Purchase requisition berhasil dihapus! .</div>';    
		$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=prbatal&mod=yes" />';    
	}
}
$admin .= '
<div class="panel-heading"><b>Pembatalan Purchase Requisition</b></div>';	
$admin .= '
<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$admin .= '<tr>
	<td>Nomor PR</td>
			<td>:</td>
	<td><select name="kodepr" id="combobox">';
$hasilj = $koneksi_db->sql_query("SELECT * FROM po_pr ORDER BY id desc");
while ($datasj =  $koneksi_db->sql_fetchrow ($hasilj)){
	$pilihan = ($datasj['nopr']==$kodepr)?"selected":'';
$admin .= '<option value="'.$datasj['nopr'].'"'.$pilihan.'>'.$datasj['nopr'].' - '.$datasj['namapr'].'</option>';
}
$admin .='</select>&nbsp;&nbsp;<input type="submit" value="Lihat PR" name="lihatpr"class="btn btn-success" >&nbsp;<input type="submit" value="Batal" name="batalcetak"class="btn btn-danger" >&nbsp;</td>

		</tr>';
$admin .= '</form></table></div>';	
//		<input type="submit" value="Hapus PR" name="hapuspr"class="btn btn-warning" >
if(isset($_POST['lihatpr'])){

$no=1;
$query 		= mysql_query ("SELECT * FROM `po_pr` WHERE `nopr` like '$kodepr'");
$data 		= mysql_fetch_array($query);
$nopr  			= $data['nopr'];
$tgl  			= $data['tgl'];
$namapr  			= $data['namapr'];
$departemenpr  			= $data['departemenpr'];
$tujuanpr  			= $data['tujuanpr'];
	$error 	= '';
		if (!$nopr) $error .= "Error: kode PR tidak terdaftar , silahkan ulangi.<br />";
	if ($error){
		$admin .= '<div class="error">'.$error.'</div>';}else{
$admin .= '<div class="panel panel-info">
<div class="panel-heading"><b>Purchase Requisition</b></div>';
$admin .= '
		<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Nomor PR</td>
		<td>:</td>
		<td>'.$nopr.'</td>
		<td><input type="hidden" name="kode" value="'.$nopr.'">
		<input type="submit" value="Hapus PR" name="hapuspr"class="btn btn-warning" onclick="return confirm(\'Apakah Anda Yakin Ingin Menghapus Data Ini ?\')">

		</td>
	</tr>';
$admin .= '
	<tr>
		<td>Tanggal</td>
		<td>:</td>
		<td>'.tanggalindo($tgl).'</td>
		<td></td>
		</tr>';
$admin .= '
	<tr>
		<td>Nama PR</td>
		<td>:</td>
		<td>'.$namapr.'</td>
			<td></td>
	</tr>';	
$admin .= '
	<tr>
		<td>Departemen</td>
		<td>:</td>
		<td>'.getdepartemendaritingkat($departemenpr).' - '.getdepartemen($departemenpr).'</td>
			<td></td>
	</tr>';	
$admin .= '
	<tr>
		<td>Tujuan Pembelian</td>
		<td>:</td>
		<td>'.$tujuanpr.'</td>
			<td></td>
	</tr>';	
$admin .= '</table>		</form></div>';	
$admin .='<div class="panel panel-info">';
$admin .= '
<div class="panel-heading"><b>Detail PR</b></div>';	
$admin .= '
<table class="table table-striped table-hover">';
$admin .= '	
	<tr>
			<th><b>No</b></</th>
		<th><b>Kode</b></</th>
		<th><b>Nama</b></td>
		<th><b>Jumlah</b></</td>
		<th><b>Spesifikasi</b></</td>
	</tr>';
$hasild = $koneksi_db->sql_query("SELECT * FROM `po_prdetail` WHERE `nopr` like '$kodepr'");
while ($datad =  $koneksi_db->sql_fetchrow ($hasild)){
$admin .= '	
	<tr>
		<td>'.$no.'</td>
		<td>'.$datad["kodebarang"].'</td>
		<td>'.getnamabarang($datad["kodebarang"]).'</td>
		<td>'.$datad["jumlah"].'</td>
		<td>'.$datad["spesifikasi"].'</td>
	</tr>';
	$no++;
		}
$admin .= '</table></div>';	
		}
	}

	}

}
echo $admin;
?>
