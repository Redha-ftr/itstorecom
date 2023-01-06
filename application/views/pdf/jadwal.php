<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA JADWAL</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th style="text-align: center; width: 3%;">No</th>
		    <th style="text-align: center; width: 10%;">Sekolah</th>
		    <th style="text-align: center; width: 10%;">Tahun Ajaran</th> 
		    <th style="text-align: center; width: 10%;">Kelas</th> 
	        <th style="text-align: center; width: 7%;">Hari</th>  
	        <th style="text-align: center; width: 20%;">Mata Pelajaran</th> 
	        <th style="text-align: center; width: 30%;">Guru</th>  
	        <th style="text-align: center; width: 10%;">Waktu</th>  
		</tr>
	</thead>
	<tbody>
		<?php
			$no = 0;
			foreach ($query as $key => $value) {
			$no++;
		?>
		<tr>
			<td style="text-align: center;"><?=$no?></td>
			<td><?=$value->nama_sekolah?></td>
			<td><?=$value->nama_tahun?></td>
			<td><?=$value->nama_kelas?></td>
			<td><?=$value->nama_hari?></td>
			<td><?=$value->nama_matapelajaran?></td>
			<td><?=$value->nama_guru?></td>
			<td><?=$value->nama_waktu?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
