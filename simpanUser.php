<?php
$namask		 =$_POST['namask'];
$un 		 =$_POST['un'];
$pwrd		 =$_POST['pwrd'];

include "koneksi.php";

$sql = "insert into admin(nama_sekolah,username,password)
							  values
							('$namask','$un','$pwrd')";
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