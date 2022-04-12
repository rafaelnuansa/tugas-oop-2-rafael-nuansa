<?php 
// Mengkaitkan koneksi
include 'koneksi.php';

// Membuat variabel dari Request Post 
$data = $_POST['data'];
$kode_provinsi = $_POST['kode_provinsi'];
?>

<?php
// Membuat Kondisi jika Data bernilai true  
if($data == true){
	?>
	Kabupaten/Kota
	<select id="form_kab">
		<option value="">Pilih Kabupaten/Kota</option>
		<?php 
        $query="SELECT * FROM tbl_kota WHERE kode_provinsi='$kode_provinsi' ORDER BY nama_kabkota ASC";
		$kabkota = mysqli_query($connect,$query);
        foreach($kabkota as $row):?>
        <option value="<?php echo $row['id_kabkota']; ?>"><?php echo $row['nama_kabkota']; ?></option>
        <?php endforeach;?>
	</select>

<?php 
}else{
   echo "Not found";
}
?>