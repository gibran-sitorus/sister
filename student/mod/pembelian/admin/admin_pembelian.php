<?php
if (!defined('AURACMS_admin')) {
    Header("Location: ../index.php");
    exit;
}

if (!cek_login()){
    header("location: index.php");
    exit;
} else{
$style_include[] .= '<link rel="stylesheet" media="screen" href="mod/calendar/css/dynCalendar.css" />
<link rel="stylesheet" href="mod/pembelian/style.css" />
';
$admin .= '
<script type="text/javascript" src="js/select.js"></script>
<script type="text/javascript" src="mod/pembelian/script.js"></script>
<script language="javascript" type="text/javascript" src="mod/calendar/js/browserSniffer.js"></script>
<script language="javascript" type="text/javascript" src="mod/calendar/js/dynCalendar.js"></script>';
$wkt = <<<eof
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
$script_include[] = $JS_SCRIPT;
	
//$index_hal=1;	
	$admin  .='<legend>TRANSAKSI PEMBELIAN</legend>';
	$admin  .= '<div class="border2">
<table  width="25%"><tr align="center">
<td>
<a href="admin.php?pilih=pembelian&mod=yes">PEMBELIAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=pembelian&mod=yes&aksi=cetak">CETAK PEMBELIAN</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
$admin .='<div class="panel panel-info">';
$admin .= '<script type="text/javascript" language="javascript">
   function GP_popupConfirmMsg(msg) { //v1.0
  document.MM_returnValue = confirm(msg);
}
</script>';
if ($_GET['aksi'] == ''){

if(isset($_POST['submitpembelian'])){
$noinvoice 		= $_POST['noinvoice'];
$nopo 		= $_POST['kodepo'];
$tgl 		= $_POST['tgl'];
$kodesupplier 		= $_SESSION["kodesupplier"];
$carabayar 		= $_POST['carabayar'];
$total 		= $_POST['total'];
$discount ='0';
$netto =$_POST['total'];
$termin 		= $_POST['termin'];
$user 		= $_POST['user'];
if (!$_SESSION["kodesupplier"])  	$error .= "Error:  Kode Supplier harus ada <br />";
if (!$_SESSION["product_id"])  	$error .= "Error:  Kode Barang harus ada <br />";
if ($koneksi_db->sql_numrows($koneksi_db->sql_query("SELECT noinvoice FROM pos_pembelian WHERE noinvoice='$noinvoice'")) > 0) $error .= "Error: Nomor Invoice ".$noinvoice." sudah terdaftar<br />";

if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
if($carabayar=='Hutang'){
$tgltermin = tgltermin($tgl,$termin);
$hasil  = mysql_query( "INSERT INTO `pos_pembelian` VALUES ('','$noinvoice','$nopo','$tgl','$kodesupplier','$carabayar','$total','$discount','$netto','0','$total','$termin','$tgltermin','$user')" );	
}
else{
$hasil  = mysql_query( "INSERT INTO `pos_pembelian` VALUES ('','$noinvoice','$nopo','$tgl','$kodesupplier','$carabayar','$total','$discount','$netto','$total','0','$termin','','$user')" );
}
$idpembelian = mysql_insert_id();
foreach ($_SESSION["product_id"] as $cart_itm)
{
$kode = $cart_itm["kode"];
$jumlah = $cart_itm["jumlah"];
$harga = $cart_itm["harga"];
$subdiscount = $cart_itm["subdiscount"];
$subtotal = $cart_itm["subtotal"];
$hasil  = mysql_query( "INSERT INTO `pos_pembeliandetail` VALUES ('','$noinvoice','$nopo','$kode','$jumlah','$harga','$subdiscount','$subtotal')" );
updatestokbeli($kode,$jumlah);
alurstok($tgl,'Pembelian',$noinvoice,$kode,$jumlah);
}
if($hasil){
$admin .= '<div class="sukses"><b>Berhasil Menambah Pembelian.</b></div>';
pembeliancetak($noinvoice);
pembelianrefresh();
}else{
$admin .= '<div class="error"><b>Gagal Menambah Pembelian.</b></div>';
		}		
}	
}

if(isset($_POST['tambahsupplier'])){
$kodesupplier = $_POST['kodesupplier'];
$hasil =  $koneksi_db->sql_query( "SELECT * FROM pos_supplier WHERE kode='$kodesupplier'" );
$data = $koneksi_db->sql_fetchrow($hasil);
$kode=$data['kode'];
if (!$kode)  	$error .= "Error:  Kode Supplier Tidak di Temukan<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
$_SESSION['kodesupplier'] = $_POST['kodesupplier'];	
}
}

if(isset($_POST['tambahpo'])){
$_SESSION['kodesupplier']='';
$_SESSION['kodepo']='';
$_SESSION['product_id']='';
$_SESSION['totalbeli']='';

$_SESSION['kodepo'] = $_POST['kodepo'];
$hasil3 =  $koneksi_db->sql_query("SELECT * FROM pos_po WHERE nopo = '$_SESSION[kodepo]'");
$data3 = $koneksi_db->sql_fetchrow($hasil3);
  $kodesupplier = $data3['kodesupplier'];
    $discount = $data3['discount'];
$_SESSION['kodesupplier']=$kodesupplier;	 
$carabayar=$data3['carabayar'];
$termin=$data3['termin']; 
$hasil =  $koneksi_db->sql_query( "SELECT * FROM pos_podetail WHERE nopo='$_SESSION[kodepo]'" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
$nopo=$data['nopo'];
$kode=$data['kodebarang'];
$jumlah=$data['jumlah'];
$harga=$data['harga'];
$subdiscount=$data['subdiscount'];
$ceksisajumbeli=$jumlah-ceksisajumbeli($nopo,$kode);
$subtotal=$ceksisajumbeli*$harga;
$hasil2 =  $koneksi_db->sql_query( "SELECT * FROM pos_produk WHERE kode='$kode'" );
$data2 = $koneksi_db->sql_fetchrow($hasil2);
$id=$data2['id'];
$jenjang=$data2['jenjang'];
$PRODUCTID = array ();
foreach ($_SESSION['product_id'] as $k=>$v){
$PRODUCTID[] = $_SESSION['product_id'][$k]['kode'];
}
if (!in_array ($kode, $PRODUCTID)){
$_SESSION['product_id'][] = array ('id' => $id,'kode' => $kode, 'jumlah' => $ceksisajumbeli, 'harga' => $harga, 'jenjang' => $jenjang, 'subdiscount' => $subdiscount, 'subtotal' => $subtotal, 'jumlahbeliasli' => $ceksisajumbeli);
}else{
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
$_SESSION['product_id'][$k]['jumlah'] = $_SESSION['product_id'][$k]['jumlah'];

    }
}
		
}
}

}

if(isset($_POST['deletesupplier'])){
pembelianrefresh();
}

if(isset($_POST['hapusbarang'])){
$kode 		= $_POST['kode'];
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
unset($_SESSION['product_id'][$k]);
    }
}
}

if(isset($_POST['simpandetail'])){
foreach ($_SESSION['product_id'] as $k=>$v){
if (($_POST['jumlahbeliasli'][$k]<$_POST['jumlahbeli'][$k])or($_POST['jumlahbeli'][$k]<'0')) $error .= "Error: Jumlah tidak sesuai , silahkan ulangi.<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
$_SESSION['product_id'][$k]['subdiscount']=$_POST['subdiscount'][$k];
$_SESSION['product_id'][$k]['jumlah']=$_POST['jumlahbeli'][$k];
$_SESSION['product_id'][$k]['harga']=$_POST['harga'][$k];
$nilaidiscount=cekdiscount($_SESSION['product_id'][$k]['subdiscount'],$_SESSION['product_id'][$k]['harga']);
$_SESSION['product_id'][$k]['subtotal'] =$_SESSION['product_id'][$k]['jumlah']*($_SESSION['product_id'][$k]['harga']-$nilaidiscount);
}
}
//$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=po&mod=yes" />';
}


if(isset($_POST['tambahbarang'])){
$_SESSION['kodesupplier'] = $_POST['kodesupplier'];	
$kodebarang 		= $_POST['kodebarang'];
$jumlah 		= '1';
$hasil =  $koneksi_db->sql_query( "SELECT * FROM pos_produk WHERE kode='$kodebarang'" );
$data = $koneksi_db->sql_fetchrow($hasil);
$id=$data['id'];
$kode=$data['kode'];
$jenis=$data['jenis'];
$stok=$data['jumlah'];
$harga=$data['hargabeli'];
$jenjang=$data['jenjang'];
$error 	= '';
if (!$_SESSION['kodesupplier'])  	$error .= "Error:  Kode Supplier Tidak di Temukan<br />";
if (!$kode)  	$error .= "Error:  Kode Barang Tidak di Temukan<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{

$PRODUCTID = array ();
foreach ($_SESSION['product_id'] as $k=>$v){
$PRODUCTID[] = $_SESSION['product_id'][$k]['kode'];
}
if (!in_array ($kode, $PRODUCTID)){
$subdiscount="0";
$subtotal=$harga;
$_SESSION['product_id'][] = array ('id' => $id,'kode' => $kode,'jenis' => $jenis, 'jumlah' => $jumlah, 'harga' => $harga, 'jenjang' => $jenjang, 'subdiscount' => $subdiscount, 'subtotal' => $subtotal);
}else{
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
	$subdiscount="0";
$_SESSION['product_id'][$k]['jumlah'] = $_SESSION['product_id'][$k]['jumlah']+1;
$_SESSION['product_id'][$k]['subtotal'] = $_SESSION['product_id'][$k]['jumlah']*$_SESSION['product_id'][$k]['harga'];
    }
}
		
}
}
}

if(isset($_POST['batalbeli'])){
pembelianrefresh();
}

if($_SESSION["kodesupplier"]!=''){
$supplier = '
		<td>Nama Supplier</td>
		<td>:</td>
		<td>'.getnamasupplier($_SESSION['kodesupplier']).'</td>';
}else{
$supplier = '
		<td></td>
		<td></td>
		<td></td>';	
	
}


$user = $_SESSION['UserName'];
$tglnow = date("Y-m-d");
$noinvoice = generateinvoice();
$tgl 		= !isset($tgl) ? $tglnow : $tgl;
$kodepo 		= !isset($kodepo) ? $_SESSION['kodepo'] : $kodepo;
$kodesupplier 		= !isset($kodesupplier) ? $_SESSION['kodesupplier'] : $kodesupplier;
$discount 		= !isset($discount) ? '0' : $discount;
$carabayar 		= !isset($carabayar) ? 'Hutang' : $carabayar;
$termin 		= !isset($termin) ?$_POST['termin'] : $termin;
$admin .= '
<div class="panel-heading"><b>Transaksi Pembelian</b></div>';	
$admin .= '
<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Nomor Invoice</td>
		<td>:</td>
		<td><input type="text" name="noinvoice" value="'.$noinvoice.'" class="form-control">&nbsp;<input type="submit" value="Batal" name="deletesupplier"class="btn btn-danger" ></td>
'.$supplier.'
	</tr>';
$admin .= '
	<tr>
		<td>Tanggal</td>
		<td>:</td>
		<td><input type="text" name="tgl" value="'.$tgl.'" class="form-control">&nbsp;'.$wkt.'</td>
<td>Cara Pembayaran</td>
		<td>:</td>
		<td>'.$carabayar.'<input type="hidden" name="carabayar" value="'.$carabayar.'" class="form-control"></td>		
	</tr>';
$admin .= '
	<tr>
		<td>Kode PO</td>
		<td>:</td>
		<td><select  id="myselect" name="kodepo"  class="form-control">';
$hasil = $koneksi_db->sql_query( "SELECT * FROM pos_po order by id desc" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
	$admin .= '
			<option value="'.$data['nopo'].'">'.$data['nopo'].' ~ '.getnamasupplier($data['kodesupplier']).' ~ '.rupiah_format($data['total']).'</option>';
}
	$admin .= '</select>&nbsp;
					<input type="submit" value="Tambah INV" name="tambahpo"class="btn btn-success" >
				</td>
		<td>Termin</td>
		<td>:</td>
		<td>'.$termin.'<input type="hidden" name="termin" value="'.$termin.'" class="form-control"></td>
		</tr>';
$admin .= '	
	<tr><td colspan="5"><div id="Tbayar"></div></td>
		<td>
		</td>
	</tr>
</table>';	
$admin .='</div>';
if(($_SESSION["product_id"])!=""){
$no=1;
$admin .='<div class="panel panel-info">';
$admin .= '
<div class="panel-heading"><b>Detail Pembelian</b></div>';	
$admin .= '
<table class="table table-striped table-hover">';
$admin .= '
<form method="post" action="" class="form-inline"id="posts">';
$admin .= '	
	<tr>
			<th><b>No</b></</th>
<th><b>Jenjang</b></</th>
		<th><b>Kode</b></</th>
		<th><b>Nama</b></td>
		<th><b>Jumlah</b></</td>
		<th><b>Harga</b></</th>
<th><b>Discount</b></</th>
<th><b>SubDiscount</b></</th>
<th><b>Subtotal</b></</th>
		<th><b>Aksi</b></</th>
	</tr>';
foreach ($_SESSION["product_id"] as $cart_itm)
        {
		$array =$no-1;
$nilaidiscount=cekdiscount($cart_itm["subdiscount"],$cart_itm["harga"]);
$admin .= '	
	<tr>
			<td>'.$no.'</td>
		<td>'.getjenjang($cart_itm["jenjang"]).'</td>
			<td>'.$cart_itm["kode"].'</td>
		<td>'.getnamabarang($cart_itm["kode"]).'</td>
		<td><input align="right" type="text" name="jumlahbeli['.$array.']" value="'.$cart_itm["jumlah"].'"class="form-control"></td>
		<td>'.$cart_itm["harga"].'</td>
		<td>'.$cart_itm["subdiscount"].'</td>
	<td>'.$nilaidiscount.'</td>
		<td>'.$cart_itm["subtotal"].'</td>
		<td>
<input align="right" type="hidden" name="harga['.$array.']" value="'.$cart_itm["harga"].'"class="form-control">
<input align="right" type="hidden" name="subdiscount['.$array.']" value="'.$cart_itm["jumlah"].'"class="form-control">
		<input align="right" type="hidden" name="jumlahbeliasli['.$array.']" value="'.$cart_itm["jumlahbeliasli"].'"class="form-control">
		<input type="hidden" name="kode" value="'.$cart_itm["kode"].'">
</td>
	</tr>';
	$total +=$cart_itm["subtotal"];
	$no++;
		}
$admin .= '	
	<tr>
		<td colspan="9" ></td>
		<td ><input type="submit" value="Edit Detail" name="simpandetail"class="btn btn-warning" ></td>
	</tr>';		
$_SESSION['totalbeli']=$total;
$admin .= '	
	<tr>
		<td></td>
		<td></td>		
		<td colspan="6" align="right"><b>Total</b></td>
		<td ><input type="text" name="total" id="total"   class="form-control"  value="'.$_SESSION['totalbeli'].'"/></td>
		<td></td>
	</tr>';
$admin .= '<tr><td colspan="7"></td><td align="right"></td>
		<td><input type="hidden" name="user" value="'.$user.'">
		<input type="submit" value="Batal" name="batalbeli"class="btn btn-danger" >
		<input type="submit" value="Simpan" name="submitpembelian"class="btn btn-success" >
		</td>
		<td></td></tr>';
$admin .= '</table></form>';

	}
$admin .='</div>';	
	}

if ($_GET['aksi'] == 'cetak'){
$kodeinvoice     = $_POST['kodeinvoice'];  
if(isset($_POST['batalcetak'])){
$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=pembelian&mod=yes&aksi=cetak" />';
}
$admin .= '
<div class="panel-heading"><b>Cetak Nota Pembelian</b></div>';	

$admin .= '
<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$getlastinvoice=getlastinvoice();
$admin .= '
	<tr>
		<td>Kode Invoice</td>
		<td>:</td>
		<td><select  id="myselect" name="kodeinvoice"  class="form-control">';
$hasil = $koneksi_db->sql_query( "SELECT * FROM pos_pembelian order by id desc" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
	$admin .= '
			<option value="'.$data['noinvoice'].'">'.$data['noinvoice'].' ~ '.getnamasupplier($data['kodesupplier']).' ~ '.rupiah_format($data['netto']).'</option>';
}
	$admin .= '</select>
					<input type="submit" value="Lihat Invoice" name="lihatinvoice"class="btn btn-success" >&nbsp;<input type="submit" value="Batal" name="batalcetak"class="btn btn-danger" >&nbsp;
				</td>
		<td></td>
		<td></td>
		<td></td>
		</tr>';
$admin .= '</form></table></div>';	
if(isset($_POST['lihatinvoice'])){

$no=1;
$query 		= mysql_query ("SELECT * FROM `pos_pembelian` WHERE `noinvoice` like '$kodeinvoice'");
$data 		= mysql_fetch_array($query);
$noinvoice  			= $data['noinvoice'];
$nopo  			= $data['nopo'];
$tgl  			= $data['tgl'];
$kodesupplier  			= $data['kodesupplier'];
$carabayar  			= $data['carabayar'];
$total  			= $data['total'];
$discount  			= $data['discount'];
$netto  			= $data['netto'];
$bayar  			= $data['bayar'];
$termin  			= $data['termin'];
	$error 	= '';
		if (!$noinvoice) $error .= "Error: kode Invoice tidak terdaftar , silahkan ulangi.<br />";
	if ($error){
		$admin .= '<div class="error">'.$error.'</div>';}else{
$admin .= '<div class="panel panel-info">
<div class="panel-heading"><b>Transaksi Pembelian</b></div>';
$admin .= '
		<form method="post" action="cetak_notainvoice.php" class="form-inline"id="posts"target="_blank">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Nomor Invoice</td>
		<td>:</td>
		<td>'.$noinvoice.'</td>
		<td><input type="hidden" name="kode" value="'.$noinvoice.'">
		<input type="submit" value="Cetak Nota" name="cetak_notainvoice"class="btn btn-warning" >

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
		<td>Supplier</td>
		<td>:</td>
		<td>'.getnamasupplier($kodesupplier).'</td>
			<td></td>
	</tr>';	
$admin .= '
	<tr>
		<td>Cara Pembayaran</td>
		<td>:</td>
		<td>'.$carabayar.'</td>
			<td></td>
	</tr>';	
$admin .= '
	<tr>
		<td>Termin</td>
		<td>:</td>
		<td>'.$termin.'</td>
			<td></td>
	</tr>';	
$admin .= '</table>		</form></div>';	
$admin .='<div class="panel panel-info">';
$admin .= '
<div class="panel-heading"><b>Detail Pembelian</b></div>';	
$admin .= '
<table class="table table-striped table-hover">';
$admin .= '	
	<tr>
			<th><b>No</b></</th>
<th><b>Jenjang</b></</th>
		<th><b>Kode</b></</th>
		<th><b>Nama</b></td>
		<th><b>Jumlah</b></</td>
		<th><b>Harga</b></</th>
<th><b>Discount</b></</th>
<th><b>Subtotal</b></</th>
	</tr>';
$hasild = $koneksi_db->sql_query("SELECT * FROM `pos_pembeliandetail` WHERE `noinvoice` like '$kodeinvoice'");
while ($datad =  $koneksi_db->sql_fetchrow ($hasild)){
$admin .= '	
	<tr>
			<td>'.$no.'</td>
		<td>'.getjenjangbarang($datad["kodebarang"]).'</td>
			<td>'.$datad["kodebarang"].'</td>
		<td>'.getnamabarang($datad["kodebarang"]).'</td>
		<td>'.$datad["jumlah"].'</td>
		<td>'.rupiah_format($datad["harga"]).'</td>
		<td>'.cekdiscountpersen($datad["subdiscount"]).'</td>
		<td>'.rupiah_format($datad["subtotal"]).'</td>
	</tr>';
	$no++;
		}
$admin .= '	
	<tr>		
		<td colspan="7" align="right"><b>Total</b></td>
		<td >'.rupiah_format($total).'</td>
	</tr>';
/*
	$admin .= '	
	<tr>	
		<td colspan="7" align="right"><b>Discount</b></td>
		<td >'.cekdiscountpersen($discount).'</td>
	</tr>';

$admin .= '	<tr>	
		<td colspan="7" align="right"><b>Grand Total</b></td>
		<td >'.rupiah_format($netto).'</td>
	</tr>
	';
*/
	$admin .= '	<tr>	
		<td colspan="7" align="right"><b>Bayar</b></td>
		<td >'.rupiah_format($bayar).'</td>
	</tr>
	';
$admin .= '</table></div>';	
		}
	}
}

}
echo $admin;
?>
