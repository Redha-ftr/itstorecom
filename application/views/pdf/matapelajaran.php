<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA MATA PELAJARAN</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th style="text-align: center; width: 3%;">No</th>
		    <th style="text-align: center; width: 18%;">Sekolah</th>
		    <th style="text-align: center; width: 7%;">Kelas</th> 
	        <th style="text-align: center; width: 7%;">Semester</th> 
	        <th style="text-align: center; width: 25%;">Nama (Indonesia)</th>   
	        <th style="text-align: center; width: 25%;">Nama (English)</th>
	        <th style="text-align: center; width: 15%;">Kelompok</th> 
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
			<td><?=$value->nama_level?></td>
			<td><?=$value->semester?></td>
			<td><?=$value->nama_id?></td>
			<td><?=$value->nama_en?></td>
			<td><?=$value->nama_kelompok?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
