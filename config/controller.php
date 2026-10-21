<?php

//fungsi menampilkan (read)
function select($query)
{
    global $db;

    $result = mysqli_query($db, $query);
    $rows = [];

    // Perbaikan: gunakan mysqli_fetch_assoc untuk mengambil data per baris
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    // Mengembalikan array $rows
    return $rows;
}

//fungsi menambahkan (create)
function create_barang($post)
{
    global $db;

    $nama = $post['nama'];
    $jumlah = $post['jumlah'];
    $harga = $post['harga'];

    $query = "INSERT INTO `data barang` (nama, jumlah, harga, tanggal)
              VALUES ('$nama', '$jumlah', '$harga', CURRENT_TIMESTAMP())";

    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}