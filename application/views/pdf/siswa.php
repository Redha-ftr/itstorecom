<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA SISWA</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th style="text-align: center; width: 3%;">No</th>
		    <th style="text-align: center; width: 18%;">Nama</th>
		    <th style="text-align: center; width: 7%;">NIS</th> 
	        <th style="text-align: center; width: 7%;">Tahun Masuk</th> 
	        <th style="text-align: center; width: 25%;">Sekolah</th>   
	        <th style="text-align: center; width: 25%;">Jurusan</th>
	        <th style="text-align: center; width: 15%;">Status</th> 
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
			<td><?=$value->nis?></td>
			<td><?=date('Y', strtotime($value->diterima_tanggal))?></td>
			<td><?=$value->nama_sekolah?></td>
			<td><?=$value->nama_jurusan?></td>
			<td><?=$value->nama_status?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
