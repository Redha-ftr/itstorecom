<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pdf.css" />
<h1 style="text-align: center;">DATA ABSENSI</h1>
<table style="width: 1000px;">
	<thead>
		<tr>
			<th class="text-center" style="vertical-align: middle; text-align: center; width: 20px;">No</th>
			<th class="text-center" style="vertical-align: middle; text-align: center; width: 100px;">NIS</th>
			<th class="text-center" style="vertical-align: middle; text-align: center; width: 250px;">Nama Siswa</th>
			<th class="text-center" style="vertical-align: middle; text-align: center; width: 150px;"><?=date('d/m/Y', strtotime($tanggal))?></th>
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
			<td style="text-align: center;"><?=$value->nis?></td>
			<td><?=$value->nama?></td>
			<?php 
					$checking 	= $this->db->query("SELECT id, keterangan FROM absensi_siswa WHERE tanggal = '$tanggal' AND siswa_id = '$value->id'");
				$absen_siswa = ($checking->num_rows() > 0) ? $checking->row()->keterangan : '-';
			?>
			<td style="text-align: center;">
				<?=$absen_siswa?>
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>
