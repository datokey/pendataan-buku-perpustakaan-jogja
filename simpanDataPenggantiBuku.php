<?php
$nama						 =$_POST['nama'];
$nomAnggota					 =$_POST['nomAnggota'];
$judulBukuHilang			 =$_POST['judulBukuHilang'];
$pengarangBukuHilang 		 =$_POST['pengarangBukuHilang'];
$penerbitBukuHilang		 	 =$_POST['penerbitBukuHilang'];
$ktTerbitBukuHilang		 	 =$_POST['kTerbitbukuHilang'];
$thTerbitBukuHilang			 =$_POST['thTerbitBukuHilang'];
$barcodeBukuHilang			 =$_POST['barcodeBukuHilang'];
$judulB		 	     		 =$_POST['judulB'];
$pengarang					 =$_POST['pengarang'];
$penerbit    				 =$_POST['penerbit'];
$kTerbit			 		 =$_POST['kTerbit'];
$thTerbit			 	 	 =$_POST['thTerbit'];
$barcode			 		 =$_POST['barcode'];
$tggl 						 =$_POST['tggl'];

include "koneksi.php";

$sql = "insert into penggantianbuku (nama,nomor_Anggota,judulbku_hlng,pngrngbku_hlng,pnrbtbku_hlng,kotatrbt_hlng,thntrbt_hlng,brcode_hlng,jdlbku_gnti,pngrng_gnti,penerbit_gnti,kotatrbt_gnti,thntrbt_gnti,nmrbar_gnti,tggl)
							  values
							('$nama','$nomAnggota','$judulBukuHilang','$pengarangBukuHilang ','$penerbitBukuHilang','$ktTerbitBukuHilang','$thTerbitBukuHilang','$barcodeBukuHilang','$judulB','$pengarang','$penerbit','$kTerbit','$thTerbit','$barcode','$tggl')";
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