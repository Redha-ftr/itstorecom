<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA KELAS</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th style="text-align: center; width: 3%;">No</th>
		    <th style="text-align: center; width: 25%;">Sekolah</th>
		    <th style="text-align: center; width: 22%;">Level Kelas</th> 
	        <th style="text-align: center; width: 25%;">Nama Kelas</th>  
	        <th style="text-align: center; width: 25%;">Wali Kelas</th>  
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
			<td><?=$value->nama_level_kelas?></td>
			<td><?=$value->nama?></td>
			<td><?=$value->nama_guru?></td>
			
		</tr>
		<?php } ?>
	</tbody>
</table>
