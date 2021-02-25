<?php
$nama		 =$_POST['nama'];
$un 		 =$_POST['un'];
$pwrd		 =$_POST['pwrd'];

include "koneksi.php";

$sql = "insert into admin(nama,username,password)
							  values
							('$nama','$un','$pwrd')";
			$hasil = mysqli_query($kon,$sql);
			
			if(!$hasil){
				echo "GAGAL SIMPAN ,SILAHKAN DIULANGI<br/>";
				echo mysqli_error($kon);
				echo "<br><input type ='button' value ='kembali'onClick= 'self.history.back()'>";
				
			
			
			}
		else{
			echo "Berhasil";
			echo "<br><input type ='button' value ='kembali'onClick= 'self.history.back()'>";
		}
?>