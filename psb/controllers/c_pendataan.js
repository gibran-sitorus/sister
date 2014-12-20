var mnu       = 'pendataan';
var mnu2      = 'departemen';
var mnu3      = 'tahunajaran';
var mnu_kel   = 'kelompok';
var dir       = 'models/m_'+mnu+'.php';
var dir2      = '../akademik/models/m_'+mnu2+'.php';
var dir3      = '../akademik/models/m_'+mnu3+'.php';
var dir_kel   = '../akademik/models/m_'+mnu_kel+'.php';
var contentFR = '';

// main function ---
    $(document).ready(function(){

        // function switchPN (e) {
        // $.each($('.panelx'),function(id,item){
        //     var ke = id+1;
        //     if(ke==e){
        //         $('#panel'+ke).removeAttr('style');
        //         $('h4').html($(this).attr('title'));
        //     }else{
        //         $('#panel'+ke).attr('style','display:none;');
        //     }
        // });
    // }
        // contentFR += '<form autocomplete="off" onsubmit="simpan();return false;" id="'+mnu+'FR">' 
        //                 +'<input id="idformH" type="hidden">' 
                        
        //                 +'<label>Departemen</label>'
        //                 +'<div class="input-control text">'
        //                     +'<input type="hidden" name="departemenH" id="departemenH">'
        //                     +'<input disabled type="text" name="departemenTB" id="departemenTB">'
        //                     +'<button class="btn-clear"></button>'
        //                 +'</div>'
                        
        //                 +'<label>Tahun Ajaran</label>'
        //                 +'<div class="input-control text size2">'
        //                     +'<input type="hidden" name="tahunajaranH" id="tahunajaranH">'
        //                     +'<input disabled type="text" name="tahunajaranTB" id="tahunajaranTB">'
        //                     +'<button class="btn-clear"></button>'
        //                 +'</div>'
                        
        //                 +'<label>Kelompok</label>'
        //                 +'<div class="input-control text">'
        //                     +'<input placeholder="Kelompok" oninvalid="this.setCustomValidity(\'isi dulu gan\');" required type="text" name="kelompokTB" id="kelompokTB">'
        //                     +'<button class="btn-clear"></button>'
        //                 +'</div>'
                        
        //                 +'<label>Tanggal Mulai</label>'
        //                 +'<div class="input-control text size2" data-role="datepicker"'
        //                     // +'data-date="2014-10-23"'
        //                     +'data-format="yyyy-mm-dd"'
        //                     +'data-effect="slide">'
        //                     +'<input id="tglmulaiTB" name="tglmulaiTB" type="text">'
        //                     +'<button class="btn-date"></button>'
        //                 +'</div>'

        //                 +'<label>Tanggal Akhir</label>'
        //                 +'<div class="input-control text size2" data-role="datepicker"'
        //                     // +'data-date="2014-10-23"'
        //                     +'data-format="yyyy-mm-dd"'
        //                     +'data-effect="slide">'
        //                     +'<input id="tglakhirTB" name="tglakhirTB" type="text">'
        //                     +'<button class="btn-date"></button>'
        //                 +'</div>'

        //                 +'<label>Biaya Pendaftaran</label>'
        //                 +'<div class="input-control text size2">'
        //                     +'<input placeholder="Biaya Pendaftaran" oninvalid="this.setCustomValidity(\'isi dulu gan\');" required type="text" name="biaya_pendaftaranTB" id="biaya_pendaftaranTB">'
        //                     +'<button class="btn-clear"></button>'
        //                 +'</div>'

        //                 +'<label>Keterangan</label>'
        //                 +'<div class="input-control textarea">'
        //                     +'<textarea placeholder="keterangan" name="keteranganTB" id="keteranganTB"></textarea>'
        //                 +'</div>'
                        
        //                 +'<div class="form-actions">' 
        //                     +'<button class="button primary">simpan</button>&nbsp;'
        //                     +'<button class="button" type="button" onclick="$.Dialog.close()">Batal</button> '
        //                 +'</div>'
        //             +'</form>';

        // combo departemen
        cmbdepartemen('');
        // cmbdepartemen(false,'');

        //add form
        $("#tambahBC").on('click', function(){
                   // $('#pendataanFR').toggle();
             // $('#tambah').toggle('slow');
            $('#pendataanFR').removeAttr('style');
            $('#panel1').attr('style','display:none;');

        });

        //search action
        $('#departemenS').on('change',function(){
            cmbtahunajaran($(this).val());
        });$('#tahunajaranS').on('change',function (){
            viewTB();
        });$('#kelompokS').on('change',function (){
            viewTB(); 
        })

        // search button
        $('#cariBC').on('click',function(){
            $('#cariTR').toggle('slow');
            $('#namaS').val('');
            $('#nopendaftaranS').val('');
        });
    }); 
// end of save process ---

// combo departemen ---
    function cmbdepartemen(dep){
        $.ajax({
            url:dir2,
            data:'aksi=cmbdepartemen',
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.departemen, function(id,item){
                        out+='<option value="'+item.replid+'">'+item.nama+'</option>';
                    });
                    $('#departemenS').html(out);
                }cmbtahunajaran(dt.departemen[0].replid);
            }
        });
    }
//end of combo departemen ---

// combo tahunajaran ---
    function cmbtahunajaran(dep){
        $.ajax({
            url:dir3,
            data:'aksi=cmbtahunajaran&departemen='+dep,
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.tahunajaran, function(id,item){
                        if(item.aktif=='1'){
                            out+='<option selected="selected" value="'+item.replid+'">'+item.tahunajaran+' (aktif)</option>';
                        }else{
                            out+='<option value="'+item.replid+'">'+item.tahunajaran+'</option>';
                        }
                    });
                    // viewTB(dep,dt.tahunajaran[0].replid); 
                }
                $('#tahunajaranS').html(out);
                viewTB(); 
            }
        });
    }
//end of combo tahunajaran ---

// combo kelompok ---
    function cmbkelompok(thn){
        $.ajax({
            url:dir3,
            data:'aksi=cmbkelompok&departemen='+thn,
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.kelompok, function(id,item){
                        if(item.aktif=='1'){
                            out+='<option selected="selected" value="'+item.replid+'">'+item.kelompok+' (aktif)</option>';
                        }else{
                            out+='<option value="'+item.replid+'">'+item.kelompok+'</option>';
                        }
                    });
                    // viewTB(dep,dt.kelompok[0].replid); 
                }
                $('#kelompokS').html(out);
                viewTB(); 
            }
        });
    }
//end of combo tahunajaran ---


//save process ---
    function simpan(){
        // var urlx ='&aksi=simpan&departemen='+$('#departemenS').val();
        var urlx ='&aksi=simpan';
        // edit mode
        if($('#idformH').val()!=''){
            urlx += '&replid='+$('#idformH').val();
        }
        $.ajax({
            url:dir,
            cache:false,
            type:'post',
            dataType:'json',
            data:$('form').serialize()+urlx,
            success:function(dt){
                if(dt.status!='sukses'){
                    cont = 'Gagal menyimpan data';
                    clr  = 'red';
                }else{
                    $.Dialog.close();
                    kosongkan();
                    viewTB($('#departemenS').val());
                     $('#panel1').removeAttr('style');
                     $('#pendataanFR').attr('style','display:none;');
                    cont = 'Berhasil menyimpan data';
                    clr  = 'green';
                }
                notif(cont,clr);
            }
        });
    }
//end of save process ---

// view table ---
    function viewTB(){
        var aksi ='aksi=tampil';
        var cari = '&namaS='+$('#namaS').val()
                    +'&nopendaftaranS='+$('#nopendaftaranS').val();
        $.ajax({
            url : dir,
            type: 'post',
            data: aksi+cari,
            beforeSend:function(){
                $('#tbody').html('<tr><td align="center" colspan="7"><img src="../img/w8loader.gif"></td></tr></center>');
            },success:function(dt){
                setTimeout(function(){
                    $('#tbody').html(dt).fadeIn();
                },1000);
            }
        });
    }
// end of view table ---

// form ---
    function viewFR(id){
        $.Dialog({
            shadow: true,
            overlay: true,
            draggable: true,
            width: 500,
            padding: 10,
            onShow: function(){
                var titlex;
                // form :: departemen (disabled field) -----------------------------
                    $.ajax({
                        url:dir2,
                        data:'aksi=cmb'+mnu2+'&replid='+$('#departemenS').val(),
                        type:'post',
                        dataType:'json',
                        success:function(dt){
                            $('#departemenH').val($('#departemenS').val());
                            $('#tahunajaranH').val($('#tahunajaranS').val());
                            var out;
                            if(dt.status!='sukses'){
                                out=dt.status;
                            }else{
                                out=dt.departemen[0].nama;
                            }$('#departemenTB').val(out);
                        // form :: tahun ajaran (disabled field) --------------
                            $.ajax({
                                url:dir3,
                                data:'aksi=cmbtahunajaran&departemen='+$('#departemenS').val()+'&replid='+$('#tahunajaranS').val(),
                                dataType:'json',
                                type:'post',
                                success:function(dt2){
                                    var out2;
                                    if(dt.status!='sukses'){
                                        out2=dt2.status;
                                    }else{
                                        out2=dt2.tahunajaran[0].tahunajaran;
                                    }$('#tahunajaranTB').val(out2);
                                    
                                    if (id!='') { // edit mode
                                    // form :: edit :: tampilkan data 
                                        $.ajax({
                                            url:dir,
                                            data:'aksi=ambiledit&replid='+id,
                                            type:'post',
                                            dataType:'json',
                                            success:function(dt3){
                                                $('#idformH').val(id);
                                                // $('#kelompokTB').val(dt3.kelompok);
                                                // $('#tglmulaiTB').val(dt3.tglmulai);
                                                // $('#tglakhirTB').val(dt3.tglselesai);                                                
                                                // $('#biaya_pendaftaranTB').val(dt3.biaya);                                                
                                                // $('#tingkatTB').val(dt3.tingkat);
                                                $('#keteranganTB').val(dt3.keterangan);
                                            }
                                        });
                                    // end of form :: edit :: tampilkan data 
                                        titlex='<span class="icon-pencil"></span> Ubah ';
                                    }else{ //add mode
                                        titlex='<span class="icon-plus-2"></span> Tambah ';
                                    }
                                }
                            });
                        //end of  form :: tahun ajaran (disabled field) --------------
                        }
                    });
                //end of form :: departemen (disabled field) -----------------------------
                $.Dialog.title(titlex+' '+mnu);
                $.Dialog.content(contentFR);
            }
        });
    }
// end of form ---

//paging ---
    // function pagination(page,aksix,menux){
    function pagination(page,aksix){
        var datax = 'starting='+page+'&aksi='+aksix;
        var cari = '&namaS='+$('#namaS').val()
                    +'&nopendaftaranS='+$('#nopendaftaranS').val();

        $.ajax({
            url:dir,
            type:"post",
            data: datax+cari,
            beforeSend:function(){
                $('#tbody').html('<tr><td align="center" colspan="7"><img src="../img/w8loader.gif"></td></tr></center>');
            },success:function(dt){
                setTimeout(function(){
                    $('#tbody').html(dt).fadeIn();
                },1000);
            }
        });
    }   
//end of paging ---
    
//del process ---
    function del(id){
        if(confirm('melanjutkan untuk menghapus data?'))
        $.ajax({
            url:dir,
            type:'post',
            data:'aksi=hapus&replid='+id,
            dataType:'json',
            success:function(dt){
                var cont,clr;
                if(dt.status!='sukses'){
                    cont = '..Gagal Menghapus '+dt.terhapus+' ..';
                    clr  ='red';
                }else{
                    viewTB($('#departemenS').val());
                    cont = '..Berhasil Menghapus '+dt.terhapus+' ..';
                    clr  ='green';
                }
                notif(cont,clr);
            }
        });
    }
//end of del process ---
    
// notifikasi
function notif(cont,clr) {
    var not = $.Notify({
        caption : "<b>Notifikasi</b>",
        content : cont,
        timeout : 3000,
        style :{
            background: clr,
            color:'white'
        },
    });
}
// end of notifikasi

//reset form ---
    function kosongkan(){
        $('#idformTB').val('');
        // $('#kelompokTB').val('');
        // $('#tglmulaiTB').val('');
        // $('#tglakhirTB').val('');
        // $('#biaya_pendaftaranTB').val('');
        // $('#kelompokTB').val('');
        // $('#keteranganTB').val('');
    }
//end of reset form ---

//aktifkan process ---
    function aktifkan(id){
    	var th  = $('#'+mnu+'TD_'+id).html();
    	var dep = $('#'+mnu2+'S').val();
    	//alert('d '+dep);
    	//return false;
        if(confirm(' mengaktifkan "'+th+'"" ?'))
        $.ajax({
            url:dir,
            type:'post',
            data:'aksi=aktifkan&replid='+id+'&departemen='+dep,
            dataType:'json',
            success:function(dt){
                var cont,clr;
                if(dt.status!='sukses'){
                    cont = '..Gagal Mengaktifkan '+th+' ..';
                    clr  ='red';
                }else{
                    viewTB($('#departemenS').val());
                    cont = '..Berhasil Mengaktifkan '+th+' ..';
                    clr  ='green';
                }notif(cont,clr);
            }
        });
    }
//end of aktifkan process ---
