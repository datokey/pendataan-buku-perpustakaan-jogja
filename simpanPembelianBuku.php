<?php
$judul				 =$_POST['judul'];
$pengarang 			 =$_POST['pengarang'];
$penerbit		 	 =$_POST['penerbit'];
$ktTerbit		 	 =$_POST['ktTrebit'];
$kelas			 	 =$_POST['kelas'];
$eksemplar			 =$_POST['eksemplar'];
$hrgSatuan		 	 =$_POST['hrgSatuan'];
$totalHrg			 =$_POST['totalHrg'];
$penyumbang			 =$_POST['penyumbang'];
$tggl			 	 =$_POST['tggl'];

include "koneksi.php";

$sql = "insert into pembelianbuku(judul,pengarang,penerbit,kotaTerbit,kelas,jum_Exem,hara_sat,total_hrg,penyedia,
							tanggal)
							  values
							('$judul','$pengarang','$penerbit','$ktTerbit','$kelas','$eksemplar','$hrgSatuan','$totalHrg','$penyumbang','$tggl')";
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