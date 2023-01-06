<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA KARYAWAN</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th style="text-align: center; width: 3%;">No</th>
		    <th style="text-align: center; width: 37%;">Nama</th>
		    <th style="text-align: center; width: 30%;">No ID Karyawan</th> 
	        <th style="text-align: center; width: 30%;">Sekolah</th>  
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
			<td><?=$value->nama?></td>
			<td><?=$value->nip?></td>
			<td><?=$value->nama_sekolah?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
