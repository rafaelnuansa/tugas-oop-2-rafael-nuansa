$(document).ready(function(){
    
    // ambil data kabupaten ketika data memilih provinsi
    $('body').on("change","#form_prov",function(){
        var kode_provinsi = $(this).val();
        var data = "kode_provinsi="+kode_provinsi+"&data=true";
        $.ajax({
            type: 'POST',
            url: "get_kabkota.php",
            data: data,
            success: function(hasil) {
                $("#form_kab").html(hasil);
            }
        });
    });


});

$('#form_kab').select2({
    
  });
  
$('#form_prov').select2({
});