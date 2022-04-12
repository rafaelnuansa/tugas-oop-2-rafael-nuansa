<!DOCTYPE html>
<html>
<head>
	<title>Tugas OOP 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
</head>
<body>
    
	<?php 
        include "config/koneksi.php";
	?>
    <div class="container mt-4">
        
        <div class="row justify-content-center mt-1">
        <div class="col-lg-6">
		<h2>Form Pilih Wilayah</h2>
        </div>

        </div>
        <div class="row justify-content-center mt-2">
            <div class="col-lg-6">
                
	<select class="form-control" id="form_prov">
		<option value="">Pilih Provinsi</option>
		<?php 
        $query="SELECT * FROM tbl_provinsi ORDER BY nama_provinsi ASC";
		$daerah = mysqli_query($connect, $query);
        foreach($daerah as $row):
        ?>
          <option value="<?php echo $row['kode_provinsi']; ?>"><?php echo $row['nama_provinsi']; ?></option>
        <?php
        endforeach;
        echo $query;
		?>
        
	</select>

	<select id="form_kab" class="form-control mt-4">
    <option value="">Pilih Kabupaten/Kota</option>	
    </select>

            </div>
        </div>
    </div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
	
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<script src="js/script.js"></script>
</body>
</html>