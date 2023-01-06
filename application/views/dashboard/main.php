<script type="text/javascript" src="<?php echo base_url() . 'assets/plugins/chart.js/dist/Chart.bundle.js'; ?>"></script>
<script type="text/javascript" src="<?php echo base_url() . 'assets/plugins/chart.js/samples/utils.js'; ?>"></script>




<section class="datagrid-panel">
	<div class="content with-top-banner">
		<div class="content-header no-mg-top">
			<i class="fa fa-home"></i>
			<div class="content-header-title"><?=$this->lang->line('welcome')?>, <?=$this->session->userdata('active_user')->name?></div>
		</div>


<div class="panel">
		<div class="row">
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-user-circle"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="<?=$tot_siswa?>"><?=$tot_siswa?></span>
						</div>
						<div class="card-subtitle"><?=$this->lang->line('menu_siswa')?></div>
					</div>
				</div>

			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-user-circle-o"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="<?=$tot_guru?>"><?=$tot_guru?></span>
						</div>
						<div class="card-subtitle"><?=$this->lang->line('menu_guru')?></div>
					</div>
				</div>

			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-user-circle"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="<?=$tot_karyawan?>"><?=$tot_karyawan?></span>
						</div>
						<div class="card-subtitle"><?=$this->lang->line('menu_karyawan')?></div>
					</div>
				</div>

			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-user-circle"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="<?=$tot_kelas?>"><?=$tot_kelas?></span>
						</div>
						<div class="card-subtitle"><?=$this->lang->line('menu_kelas')?></div>
					</div>
				</div>

			</div>
		</div>
	</div>




		<style>
		canvas {
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
		}
		</style>
		
		<div class="panel">
			<div class="row">
				<div class="col-md-6 card-wrapper">
					<div class="card">
						<canvas id="canvas_1"></canvas>
					</div>
				</div>
				<div class="col-md-6 card-wrapper">
					<div class="card">
						<canvas id="canvas_2"></canvas>
					</div>
				</div>
				<div class="col-md-6 card-wrapper">
					<div class="card">
						<canvas id="canvas_3"></canvas>
					</div>
				</div>
				<div class="col-md-6 card-wrapper">
					<div class="card">
						<canvas id="canvas_4"></canvas>
					</div>
				</div>
			</div>
		</div>


	</div>
</section>


