<?php

$db = mysqli_connect('localhost', 'root', '', 'crud-php');

// Cek koneksi (opsional, bisa dihapus jika sudah jalan normal)
if (!$db) {
    die('Koneksi database gagal: ' . mysqli_connect_error());
}

?>