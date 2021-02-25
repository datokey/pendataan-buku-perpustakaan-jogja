<?php
error_reporting(E_ALL ^ E_DEPRECATED);
	$host = "localhost:3306";
	$user = "root";
	$pass = "";
	$dbName = "pendataan";
	
	$kon = mysqli_connect($host, $user, $pass);
	if (!$kon)
		die("Gagal Koneksi...");
		
	$hasil = mysqli_select_db($kon, $dbName);
	if (!$hasil) {
		$hasil = mysqli_query($kon, "CREATE DATABASE $dbName");
		if (!$hasil)
			die("Gagal Buat Database");
		else
			$hasil = mysqli_select_db($kon,$dbName);
			if (!$hasil) die ("Gagal Konek Database");
			
}

$sqluser = "create table if not exists user(
					  nama_sekolah varchar (40)not null,
					  username varchar (40) not null,
					  password varchar(10) primary key,
					  KEY(password))";
					  

mysqli_query ($kon, $sqluser) or die ("GAGAL BUAT TABELKERJASAMA DAN PENGEMBANGAN ")
                    
 
 
     ?>