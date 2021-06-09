<?php
    require_once 'koneksiakad.php';

    // membaca (select) tabel mahasiswa
    // jika berhasil, hasil array dr baris-baris data
    // dan setiap baris data berupa array dari nama-nama field
    // jika tidak ada,hasil berupa nilai null

    Function bacaMhs($sql){
        $data = array();
        $koneksi = koneksiAkademik();
        $hasil = mysqli_query($koneksi, $sql);
        // jika tidak ada record, hasil berupa null
        if (mysqli_num_rows($hasil) == 0) {
                mysqli_close($koneksi);
                return null;
        }
        $i=0;
        while($baris = mysqli_fetch_assoc($hasil)){
            $data[$i]['nim']= $baris['nim'];
            $data[$i]['nama'] = $baris['nama'];
            $data[$i]['kelamin'] = $baris['kelamin'];
            $data[$i]['jurusan'] = $baris['jurusan'];
            $i++;
        }
        mysqli_close($koneksi);
        return $data;
    }

    //tugaspraktikum8 nomor1
    Function bacaSemuaMhs(){
        return bacaMhs("select*from mahasiswa");
    }

    //tugaspraktikum8 nomor2
    Function bacaMhsPerJurusan($jurusan){
        return bacaMhs("select*from mahasiswa where jurusan = '$jurusan'");
    }

    //tugaspraktikum8 nomor3
    function cariMhsDariNim($nim){
		return bacaMhs("select*from mahasiswa where nim = '$nim'");
	}

    // tambah 1 record ke tabel mahasiswa
    // data yang dimasukkan berupa nim, nama, kelamin, jurusan
    function tambahMhs($nim, $nama, $kelamin, $jurusan){
        $koneksi = koneksiAkademik();
        $sql = "insert into mahasiswa values('$nim', '$nama', '$kelamin', '$jurusan')";
        $hasil = 0;
            if(mysqli_query($koneksi, $sql))
        $hasil = 1;
            mysqli_close($koneksi);
            return $hasil;
    }

    // menghapus 1 record berdasar field kunci nim
    function hapusMhs($nim){
        $koneksi = koneksiAkademik();
        $sql = "delete from mahasiswa where nim='$nim'";
            if (!mysqli_query($koneksi, $sql)){
            die('Error: ' . mysqli_error());
        }
        $hasil = mysqli_affected_rows($koneksi);
            mysqli_close($koneksi);
            return $hasil;
        }