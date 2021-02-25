<?php
$nama					 =$_POST['nama'];
$nt				 		 =$_POST['nt'];
$alamat					 =$_POST['alamat'];
$tggl			 		 =$_POST['tggl'];
$jBukuUsul				 =$_POST['jBukuUsul'];
$pengarang 				 =$_POST['pengarang'];
$penerbit		 		 =$_POST['penerbit'];
$ktTerbit		 		 =$_POST['ktTerbit'];
$thnterbit			 	 =$_POST['thnterbit'];
$harga					 =$_POST['harga'];
$ket		 			 =$_POST['ket'];
$jawab					 =$_POST['jawab'];
$tgglJawab			 	 =$_POST['tgglJawab'];

include "koneksi.php";

$sql = "insert into usulan_siska(nama,no_tlp,alamat,tnggl,judul,pengarang,penerbit,kotaTrbt,thnTrbit,hargaBku,
							Keterangan,jawaban,tanggal_jawab) values('$nama','$nt','$alamat','$tggl','$jBukuUsul','$pengarang','$penerbit','$ktTerbit','$thnterbit','$harga','$ket','$jawab','$tgglJawab')";
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