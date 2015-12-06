var mnu  = 'pemutihanpenerimaansiswa';
var mnu2 = 'departemen';
var mnu3 = 'tingkat';
var mnu4 = 'tahunajaran';
var mnu5 = 'subtingkat';

var dir  = 'models/m_'+mnu+'.php';
var dir2 = '../akademik/models/m_'+mnu2+'.php';
var dir3 = '../akademik/models/m_'+mnu3+'.php';
var dir4 = '../akademik/models/m_'+mnu4+'.php';
var dir5 = '../akademik/models/m_'+mnu5+'.php';

var contentFR = '';

// main function ---
    $(document).ready(function(){
        contentFR += '<form style="overflow:scroll;height:500px;" autocomplete="off" id="dokumenFR" onsubmit="simpan();return false;" >' 
                        +'<input name="idformH" id="idformH" type="hidden">' 

                        +'<table width="100%" class="table">'
                            +'<tr>'
                                +'<td width="20%" >Departemen</td>'
                                +'<td>'
                                    +'<select onchange="cmbtingkat($(this).val(),\'\');" required data-transform="input-control" name="departemenTB"  id="departemenTB"></select>'
                                +'</td>'
                            +'</tr>'
                            +'<tr>'
                                +'<td>Tingkat</td>'
                                +'<td><select onchange="cmbtahunajaran(\'\');" data-transform="input-control" name="tingkatTB"  id="tingkatTB"><option value="">-Pilih Departemen Dahulu-</option></select></td>'
                            +'</tr>'
                            +'<tr>'
                                +'<td>Tahun Ajaran</td>'
                                +'<td><select onchange="cmbsubtingkat($(\'#tingkatTB\').val(),\'\')" data-transform="input-control" name="tahunajaranTB"  id="tahunajaranTB"><option value="">-Pilih Tingkat Dahulu-</option></select></td>'
                            +'</tr>'
                            +'<tr>'
                                +'<td>Sub Tingkat</td>'
                                +'<td><select data-transform="input-control" name="subtingkatTB"  id="subtingkatTB"><option value="">-Pilih Tahun Ajaran Dahulu-</option></select></td>'
                            +'</tr>'
                            +'<tr>'
                                +'<td>NIS</td>'
                                +'<td id="nisTD">-</td>'
                            +'</tr>'
                        +'</table>'

                        // siswa 
                        +'<label>Siswa </label>'
                        +'<input name="siswaH" id="siswaH" type="hidden">' 
                        +'<input onfocus="autoSuggest(\'siswa\',\'siswa\');" data-transform="input-control"  required placeholder="cari nis/nama siswa" name="siswaTB" id="siswaTB">'

                        // biaya 
                        +'<label>Biaya </label>'
                        +'<input onfocus="autoSuggest(\'biaya\',\'siswabiaya\');" data-transform="input-control"  required placeholder="cari biaya yg pilih" name="siswabiayaTB" id="siswabiayaTB">'

                        // tabel biaya
                        +'<table class="table bordered">'
                            +'<thead>'
                                +'<tr class="bg-blue fg-white">'
                                    +'<th>Biaya</th>'
                                    +'<th>Nominal</th>'
                                    +'<th><a class="<bg-blue></bg-blue>" href="#" onclick="biayaDel();"><i class="fg-white icon-cancel-2"></i></a></th>'
                                +'</tr>'
                            +'</thead>'
                            +'<tbody id="biayaTBL"></tbody>'
                        +'</table>'

                        // tgl 
                        +'<label>No. MOM </label>'
                        +'<input data-transform="input-control" required placeholder="nomor MOM" name="nomomTB" id="nomomTB">'

                        // No. MOM 
                        +'<label>Tanggal MOM</label>'
                        +'<div class="input-control text" data-role="datepicker"'
                            +'data-format="dd mmmm yyyy"'
                            +'data-effect="slide">'
                            +'<input placeholder="tgl. MOM" required id="tglmomTB" name="tglmomTB" type="text">'
                            +'<button class="btn-date"></button>'
                        +'</div>'    

                        // button
                        +'<div class="form-actions">' 
                            +'<button class="button primary">simpan</button>&nbsp;'
                        +'</div>'
                    +'</form>';
        viewTB();

        //add form
        $("#tambahBC").on('click', function(){
            viewFR('dokumen','');
        });

        //search action
        $('.cari').keydown(function (e){
            if(e.keyCode == 13) viewTB();
        });

        // search button
        $('#cariBC').on('click',function(){
            $('#cariTR').toggle('slow');
            $('#'+mnu+'S').val('');
        });
    }); 
// end of save process ---

//save process ---
    function simpan(){
        var urlx ='&aksi=simpan';
        if($('#idformH').val()!='') 
           urlx += '&replid='+$('#idformH').val();

        var u=dir;
        var d=$('form').serialize()+urlx;
        ajax(u,d).done(function (dt){
            if(dt.status!='sukses'){
                cont = dt.status;
                clr  = 'red';
            }else{
                $.Dialog.close();
                viewTB();
                cont = dt.status;
                clr  = 'green';
            }notif(cont,clr);
        });
    }
//end of save process ---

// view table ---
    function viewTB(subaksi){
        var aksi ='aksi=tampil';
        if(typeof subaksi!=='undefined'){
            aksi+='&subaksi='+subaksi;
        }
        var cari ='';
        var el,el2;

        if(typeof subaksi!=='undefined'){ // multi paging
            el  = '.'+subaksi+'_cari';
            el2 = '#'+subaksi+'_tbody';
        }else{ // single paging
            el  = '.cari';
            el2 = '#tbody';
        }

        $(el).each(function(){
            var p = $(this).attr('id');
            var v = $(this).val();
            cari+='&'+p+'='+v;
        });

        $.ajax({
            url : dir,
            type: 'post',
            data: aksi+cari,
            beforeSend:function(){
                $(el2).html('<tr><td align="center" colspan="10"><img src="img/w8loader.gif"></td></tr>');
            },success:function(dt){
                setTimeout(function(){
                    $(el2).html(dt).fadeIn();
                },1000);
            }
        });
    }

// form ---
    function viewFR(idsiswa){
        $.Dialog({
            shadow: true,
            overlay: true,
            draggable: true,
            width: '40%',
            padding: 10,
            onShow: function(){
                var titlex='<span class="icon-search"></span> Detail Aksi ';
                if(idsiswa!='') { 
                    var u =dir;
                    var d ='aksi=ambiledit&replid='+idsiswa;
                    ajax(u,d).done(function (dt){
                        if(dt.status!='sukses'){
                            notif(dt.status,'red');
                        }else{
                            $('#idformH').val(idsiswa);
                            $('#viabayarTB').val(dt.viabayar);
                            $('#keteranganTB').val(dt.keterangan);
                        }
                    });
                }else{ //add
                    cmbdepartemen('');
                }$.Dialog.title(titlex+' '+mnu);
                $.Dialog.content(contentFR);
            }
        });
    }
// end of form ---

    function subdokumenFC (iddok) {
        var u = dir;
        var d ='aksi=tampil&subaksi=subdokumen'+(iddok!=''?'&replid='+iddok:'');
        ajax(u,d).done(function (dt){
            if(dt.status!='sukses'){
                notif(dt.status,'red');
            }else{
                var o ='';
                if(dt.subdokumenArr.length==0){
                    o+='<tr><td class="fg-red" colspan="2">..kosong..</td></tr>';
                }else{
                    $.each(dt.subdokumenArr, function (id,item){
                        o+='<tr>'
                                +'<td>'
                                    +'<div data-role="input-control" class="input-control checkbox">'
                                        +'<label>'
                                            +'<input class="tingkatTB" '+(item.idsubdokumen!=null?'checked':'')+' onclick="jumlahToggleFC('+item.idtingkat+')" id="tingkat'+item.idtingkat+'TB" name="tingkatTB['+item.idtingkat+']" type="checkbox">'
                                            +'<span class="check"></span>'
                                            +item.tingkat+' ('+item.kode+')'
                                        +'</label>'
                                    +'</div>'
                                +'</td>'
                                +'<td>'
                                    +'<div class="input-control text">'
                                        +'<input type="hidden" value="'+(item.idsubdokumen===null?'':item.idsubdokumen)+'" name="idsubdokumenH['+item.idtingkat+']" />'
                                        +'<input min="1" class="text-center" '+(item.jumlah==undefined || item.jumlah==null?'disabled':'')+' type="number" id="jumlah'+item.idtingkat+'TB" value="'+(typeof item.jumlah==undefined || item.jumlah==null?'':item.jumlah)+'" name="jumlah'+item.idtingkat+'TB">'
                                    +'</div>'
                                +'</td>'
                                +'<td>'
                                    +'<div class="input-control select">'
                                        +'<select id="satuanjumlah'+item.idtingkat+'TB" name="satuanjumlah'+item.idtingkat+'TB"></select>'
                                    +'</div>'
                                +'</td>'
                            +'</tr>';
                    }); 
                    $.each(dt.subdokumenArr, function (id,item){
                        cmbsatuanjumlah(item.idtingkat,item.satuanjumlah);
                    });
                }
                $('#subdokumenDV').html(o);
            }
        });
    }

    function jumlahToggleFC (idting) {
        if($('#tingkat'+idting+'TB').is(':checked')){
            $('#jumlah'+idting+'TB').removeAttr('disabled')
                                    .attr('required',true);
            $('#jumlah'+idting+'TB').val(1);
        }else{
            $('#jumlah'+idting+'TB').attr('disabled',true)
                                    .removeAttr('required');
            $('#jumlah'+idting+'TB').val('');
        }
    }

//paging ---
    function pagination(page,aksix,subaksi){ 
        var aksi ='aksi='+aksix+'&subaksi='+subaksi+'&starting='+page;
        var cari ='';
        var el,el2;

        if(subaksi!=''){ // multi paging 
            el  = '.'+subaksi+'_cari';
            el2 = '#'+subaksi+'_tbody';
        }else{ // single paging
            el  = '.cari';
            el2 = '#tbody';
        }

        $(el).each(function(){
            var p = $(this).attr('id');
            var v = $(this).val();
            cari+='&'+p+'='+v;
        });

        $.ajax({
            url:dir,
            type:"post",
            data: aksi+cari,
            beforeSend:function(){
                $(el2).html('<tr><td align="center" colspan="5"><img src="img/w8loader.gif"></td></tr></center>');
            },success:function(dt){
                setTimeout(function(){
                    $(el2).html(dt).fadeIn();
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
                    cont = '..Berhasil Menghapus '+dt.terhapus+' ..';
                    clr  ='green';
                    viewTB();
                }notif(cont,clr);
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
        $('#'+mnu+'TB').val('');
        $('#tglmulaiTB').val('');
        $('#saldoTB').val('');
        $('#keteranganTB').val('');
    }
//end of reset form ---

//aktifkan process ---
    function aktifkan(id){
    	var th  = $('#'+mnu+'TD_'+id).html();
        if(confirm(' mengaktifkan "'+th+'"" ?'))
        $.ajax({
            url:dir,
            type:'post',
            data:'aksi=aktifkan&id_'+mnu+'='+id,
            dataType:'json',
            success:function(dt){
                var cont,clr;
                if(dt.status!='sukses'){
                    cont = '..Gagal Mengaktifkan '+th+' ..';
                    clr  ='red';
                }else{
                    // viewTB($('#departemenS').val());
                    cont = '..Berhasil Mengaktifkan '+th+' ..';
                    clr  ='green';
                    viewTB();
                }
                notif(cont,clr);
            }
        });
    }
//end of aktifkan process ---


    function ajax (u,d) {
        return $.ajax({
            url:u,
            data:d,
            dataType:'json',
            type:'post',
        });
    }
    // urutan tabel
    function urutFC (e) {
        var u = dir;
        var d ='aksi=urutan&replid1='+$(e).attr('replid1')+'&urutan2='+$(e).val();
        ajax(u,d).done(function(dt){
            var cont,clr;
            if(dt.status!='sukses'){
                cont = '..Gagal Merubah urutan ';
                clr  ='red';
            }else{
                viewTB();
                cont = '..Berhasil Merubah Urutan ';
                clr  ='green';
            }notif(cont,clr);
        });
    }

// combo satuanjumlah ---
    function cmbsatuanjumlah(idx,sat){
        u=dir2;
        d='aksi=cmbsatuanjumlah';
        ajax(u,d).done(function(dt){
            var out='';
            if(dt.status!='sukses'){
                out+='<option value="">'+dt.status+'</option>';
            }else{
                $.each(dt.satuanjumlah, function(id,item){
                    out+='<option '+(item.replid==sat?'selected':'')+' value="'+item.replid+'">'+item.satuanjumlah+'</option>';
                });
            }
            $('#satuanjumlah'+idx+'TB').html(out);
        });
    }
//end of combo satuanjumlah ---


  // autosuggest
    function autoSuggest(typ,el){
        if(typ=='siswa'){
            var urlx= '?aksi=autocomp&subaksi=siswa&iddepartemen='+$('#departemenTB').val()+'&idtingkat='+$('#tingkatTB').val()+'&idtahunajaran='+$('#tahunajaranTB').val()+'&idsubtingkat='+$('#subtingkatTB').val();
            var col = [{
                'align':'left',
                'columnName':'nis',
                'hide':true,
                'width':'10',
                'label':'NIS'
            },{   
                'align':'left',
                'columnName':'namasiswa',
                'width':'30',
                'label':'Nama'
            },{   
                'align':'left',
                'columnName':'kelas',
                'width':'20',
                'label':'Kelas'
            }];
        }else{
            var urlx= '?aksi=autocomp&subaksi=biaya&idsiswa='+$('#siswaH').val()+'&idtahunajaran='+$('#tahunajaranTB').val();
            var col=[{   
                'align':'left',
                'columnName':'biaya',
                'width':'25',
                'label':'Biaya'
            },{   
                'align':'right',
                'columnName':'biayaNett',
                'width':'25',
                'label':'Tagihan'
            },{   
                'align':'right',
                'columnName':'biayaKurang',
                'width':'25',
                'label':'Kurang'
            }];
        }

        urly = dir+urlx;
        $('#'+el+'TB').combogrid({
            debug:true,
            width:'700px',
            colModel: col ,
            url: urly,
            select: function( event, ui ) { // event setelah data terpilih 
                if(typ=='siswa'){
                    $('#'+el+'H').val(ui.item.idsiswa);
                    $('#'+el+'TB').val(ui.item.namasiswa);
                    $('#nisTD').html(ui.item.nis);

                    // validasi input (tidak sesuai data dr server)
                    $('#'+el+'TB').on('keyup', function(e){
                        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
                        var keyCode = $.ui.keyCode;
                        if(key != keyCode.ENTER && key != keyCode.LEFT && key != keyCode.RIGHT && key != keyCode.UP && key != keyCode.DOWN ) {
                            if($('#'+el+'H').val()!=''){
                                $('#'+el+'H').val('');
                                $('#'+el+'TB').val('');
                            }
                        }
                    });

                    $('#'+el+'TB').on('blur,change',function(){
                        if($('#'+el+'H').val()=='') {
                            $('#'+el+'TB').val(''); // :: all 
                        }
                    });
                }else{ // biaya 
                    biayaAdd(idsiswabiaya,biaya,biayaKurang);
                }
                return false;
            }
        });
    }

// combo departemen  ---
    function cmbdepartemen(dep){
        var u = dir2;
        var d = 'aksi=cmb'+mnu2;
        ajax(u,d).done(function (dt){
            var out='';
            if(dt.status!='sukses'){
                out+='<option value="">'+dt.status+'</option>';
            }else{
                $.each(dt.departemen, function (id,item){
                    out+='<option '+(item.replid==dep?'selected':'')+' value="'+item.replid+'">'+item.nama+'</option>';
                });
            }$('#departemenTB').html('<option value="">-Pilih Departemen-</option>'+out);
        });
    }

// combo tingkat  ---
    function cmbtingkat(dep,ting){
        var u = dir3;
        var d = 'aksi=cmb'+mnu3+'&departemen='+dep;
        ajax(u,d).done(function (dt){
            var out='';
            if(dt.status!='sukses'){
                out+='<option value="">'+dt.status+'</option>';
            }else{
                $.each(dt.tingkat, function (id,item){
                    out+='<option '+(item.replid==ting?'selected':'')+' value="'+item.replid+'">'+item.tingkat+'</option>';
                });
            }$('#tingkatTB').html('<option value="">-Pilih tingkat-</option>'+out);
        });
    }

// tahun ajaran  ---
    function cmbtahunajaran(thn){
        var u = dir4;
        var d = 'aksi=cmb'+mnu4;
        ajax(u,d).done(function (dt){
            var out='';
            if(dt.status!='sukses'){
                out+='<option value="">'+dt.status+'</option>';
            }else{
                $.each(dt.tahunajaran, function (id,item){
                    out+='<option '+(item.replid==thn?'selected':'')+' value="'+item.replid+'">'+item.tahunajaran+' - '+(parseInt(item.tahunajaran)+1)+'</option>';
                });
            }$('#tahunajaranTB').html('<option value="">-Pilih Tahun Ajaran-</option>'+out);
        });
    }
// sutingkat   ---
    function cmbsubtingkat(ting,subt){
        var u = dir5;
        var d = 'aksi=cmb'+mnu5+'&tingkat='+ting;
        ajax(u,d).done(function (dt){
            var out='';
            if(dt.status!='sukses'){
                out+='<option value="">'+dt.status+'</option>';
            }else{
                $.each(dt.subtingkat, function (id,item){
                    out+='<option '+(item.replid==subt?'selected':'')+' value="'+item.replid+'">'+item.subtingkat+'</option>';
                });
            }$('#subtingkatTB').html('<option value="">-Pilih Sub Tingkat-</option>'+out);
        });
    }

    function biayaDel(id){
        $('#biayaTR_'+id).fadeOut('slow',function(){
            $('#biayaTR_'+id).remove();
            collectArr();
            console.log('arr terpilih in biayaDel=>'+pinjamArr);
        });
    }

// pilih barang yg akan dipinjam ---
    function biayaAdd (id,biaya,biayaKurang) {
        var tr ='<tr val="'+id+'" class="biayaTR" id="biayaTR_'+id+'">'
                    +'<td>'+biaya+'</td>'
                    +'<td>'+biayaKurang+'</td>'
                    +'<td><button onclick="biayaDel('+id+');"><i class="icon-remove"></button></i></td>'
                +'</tr>';
        $('#biayaTBL').prepend(tr); 
        $('#judulTB').combogrid( "option", "url", dir+'?aksi=autocomp&subaksi=pinjam&lokasi='+$('#lokasiTB').val()+'&pinjamArr='+collectArr('pinjam').toString() );
    }        

