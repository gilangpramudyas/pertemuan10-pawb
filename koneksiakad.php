<?php
Function koneksiAkademik(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pabw-gilang";

    // menciptakan koneksi
    $koneksi = mysqli_connect($servername, $username, $password,$dbname);

    // Cek koneksi
    if (!$koneksi) {
        die("Koneksi gagal: " . mysqli_connect_error());
    }

    return $koneksi;
}