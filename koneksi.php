<?php
$connect = new mysqli("localhost","root","","wilayah");
// Check connection
if ($connect -> connect_errno) {
  echo "Koneksi Gagal!: " . $connect -> connect_error;
  exit();
}
?>