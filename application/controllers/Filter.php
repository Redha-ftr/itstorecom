<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Filter extends Base_Controller {

	/**
     * List of Gurus
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function __construct()
    {
        parent::__construct();
        $this->load->language('siakad', $this->session->userdata('language'));
        
    }
	
	public function index()
	{
		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	public function level_kelas()
	{
		$sekolah_id = $this->input->post('sekolah_id');

		if($sekolah_id != 'all'){

			$query = $this->db->query("SELECT id, nama FROM level_kelas WHERE sekolah_id = '$sekolah_id' AND softdelete = '0'")->result();
			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}else{
				echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach (get_table('level_kelas','id','nama') as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}
										
	}

	public function level_kelas_select()
	{
		$sekolah_id = $this->input->post('sekolah_id');

		if($sekolah_id != 'all'){

			$query = $this->db->query("SELECT id, nama FROM level_kelas WHERE sekolah_id = '$sekolah_id' AND softdelete = '0'")->result();
			echo '<option value="all"> --- '.$this->lang->line('filter_all').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}else{
				echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach (get_table('level_kelas','id','nama') as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}
										
	}

	public function level_kelas_pilih()
	{
		$sekolah_id = $this->input->post('sekolah_id');

		if($sekolah_id != 'all'){

			$query = $this->db->query("SELECT id, nama FROM level_kelas WHERE sekolah_id = '$sekolah_id' AND softdelete = '0'")->result();
			echo '<option value="all"> --- Pilih Level Kelas --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}else{
				echo '<option value="all"> --- Pilih Level Kelas --- </option>';
			foreach (get_table('level_kelas','id','nama') as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		}
										
	}
	public function kelas()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}

			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND $filter_level_kelas_id
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_all').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}


	public function kelas_tatap_muka()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}




			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND jenis_kelas_id = '1'
							AND $filter_level_kelas_id
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}


	public function kelas_rapor()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}

			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND jenis_kelas_id = '1'
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_all').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}


	public function kelas_pengembangan_diri()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}

			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND jenis_kelas_id = '2'
							AND $filter_level_kelas_id
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}

	public function kelas_pilih()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}

			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND jenis_kelas_id = '1'
							AND $filter_level_kelas_id
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- Pilih Kelas --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}

	public function matapelajaran()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$tahun_aktif 		= $this->session->userdata('tahun_aktif');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "t1.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "t1.sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "t1.level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "t1.level_kelas_id = " .$level_kelas_id;
		}


		$group_id = $this->session->userdata('active_user')->group_id;
		$users_id = $this->session->userdata('active_user')->id;

		//guru
		if($group_id == '3')
		{	

			$guru_id = $this->db->query("SELECT id FROM guru WHERE users_id = '$users_id' AND softdelete = '0'")->row()->id;
			$filter_guru_id = "t2.guru_id = " .$guru_id;

		}else{

			$filter_guru_id = "t2.guru_id > 0";
		}


			$query = $this->db->query("SELECT t1.id, t1.nama_id, t1.kode_matapelajaran FROM matapelajaran t1 JOIN jadwal t2
											ON t1.id = t2.matapelajaran_id
											WHERE t2.tahun_id = '$tahun_aktif'
											AND $filter_sekolah_id
											AND $filter_level_kelas_id
											AND $filter_guru_id
											AND t1.softdelete = '0'
											AND t2.softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_all').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->kode_matapelajaran . ' -  ' .$value->nama_id.'</option>';
			}

		
										
	}


	public function matapelajaran_input_nilai()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$kelas_id 			= $this->input->post('kelas_id');
		$tahun_aktif 		= $this->session->userdata('tahun_aktif');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "t2.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "t2.sekolah_id = " .$sekolah_id;
		}


		if($kelas_id == 'all'){
			$filter_kelas_id = "t2.kelas_id > 0";
		}else{
			$filter_kelas_id = "t2.kelas_id = " .$kelas_id;
		}


		$group_id = $this->session->userdata('active_user')->group_id;
		$users_id = $this->session->userdata('active_user')->id;

		//guru
		if($group_id == '3')
		{	

			$guru_id = $this->db->query("SELECT id FROM guru WHERE users_id = '$users_id' AND softdelete = '0'")->row()->id;
			$filter_guru_id = "t2.guru_id = " .$guru_id;

		}else{

			$filter_guru_id = "t2.guru_id > 0";
		}




			$query = $this->db->query("SELECT t1.id, t1.nama_id, t1.kode_matapelajaran, t3.nama as nama_guru FROM matapelajaran t1 JOIN jadwal t2
											ON t1.id = t2.matapelajaran_id JOIN guru t3
											ON t2.guru_id = t3.id
											WHERE t2.tahun_id = '$tahun_aktif'
											AND $filter_sekolah_id
											AND $filter_kelas_id
											AND $filter_guru_id
											AND t1.softdelete = '0'
											AND t2.softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->kode_matapelajaran . ' -  ' .$value->nama_id. ' -  ' .$value->nama_guru.'</option>';
			}

		
										
	}

	public function matapelajaran_input_nilai_pengembangan_diri()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$kelas_id 			= $this->input->post('kelas_id');
		$tahun_aktif 		= $this->session->userdata('tahun_aktif');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "t2.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "t2.sekolah_id = " .$sekolah_id;
		}


		if($kelas_id == 'all'){
			$filter_kelas_id = "t2.kelas_id > 0";
		}else{
			$filter_kelas_id = "t2.kelas_id = " .$kelas_id;
		}


		$group_id = $this->session->userdata('active_user')->group_id;
		$users_id = $this->session->userdata('active_user')->id;

		//guru
		if($group_id == '3')
		{	

			$guru_id = $this->db->query("SELECT id FROM guru WHERE users_id = '$users_id' AND softdelete = '0'")->row()->id;
			$filter_guru_id = "t2.guru_id = " .$guru_id;

		}else{

			$filter_guru_id = "t2.guru_id > 0";
		}

			$query = $this->db->query("SELECT t1.id, t1.nama_id, t1.kode_matapelajaran, t3.nama as nama_guru FROM matapelajaran t1 JOIN jadwal t2
											ON t1.id = t2.matapelajaran_id JOIN guru t3
											ON t2.guru_id = t3.id JOIN kelas t4
											ON t2.kelas_id = t4.id
											WHERE t2.tahun_id = '$tahun_aktif'
											AND $filter_sekolah_id
											AND $filter_kelas_id
											AND $filter_guru_id
											AND t4.jenis_kelas_id = '2'
											AND t1.softdelete = '0'
											AND t2.softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->kode_matapelajaran . ' -  ' .$value->nama_id. ' -  ' .$value->nama_guru.'</option>';
			}

		
										
	}
	public function matapelajaran_create_jadwal()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		
		$semester_aktif 		= get_field($this->session->userdata('tahun_aktif'),'tahun','semester_indo');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($this->input->post('kelas_id') == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$level_kelas_id 	= get_field($this->input->post('kelas_id'),'kelas','level_kelas_id');
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}

			$query = $this->db->query("SELECT id, nama_id, kode_matapelajaran FROM matapelajaran
											WHERE $filter_sekolah_id
											AND $filter_level_kelas_id
											AND semester = '$semester_aktif'
											AND softdelete = '0'
											ORDER BY nama_id ASC")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_all').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama_id.'</option>';
			}
							
	}

	public function get_grade()
	{
		
		header('Content-Type: application/json');
    	
		$hasil 				= $this->input->post('hasil');
		$sekolah_id 		= $this->input->post('sekolah_id');
		

			$query = $this->db->query("SELECT id, nilai_huruf FROM range_nilai
											WHERE sekolah_id = '$sekolah_id'
											AND $hasil >= nilai_min
											AND $hasil <= CONCAT(nilai_max,'99')
											AND softdelete = '0'");

			if($query->num_rows() > 0)
			{
				$nilai = $query->row()->nilai_huruf;
			}else{
				$nilai = '';
			}


		echo json_encode($nilai);					
	}



	public function siswa_kelas()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$kelas_id 			= $this->input->post('kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "t1.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "t1.sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "t1.level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "t1.level_kelas_id = " .$level_kelas_id;
		}


		if($kelas_id == 'all'){
			$filter_kelas_id = "t2.kelas_id > 0";
		}else{
			$filter_kelas_id = "t2.kelas_id = " .$kelas_id;
		}

			$query = $this->db->query("SELECT t3.id, t3.nis, t3.nama FROM kelas t1 JOIN rombel t2 
							ON t1.id = t2.kelas_id JOIN siswa t3
							ON t2.siswa_id = t3.id
							WHERE $filter_sekolah_id
							AND $filter_level_kelas_id
							AND $filter_kelas_id
							AND t1.softdelete = '0'
							ORDER BY t3.nama ASC")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nis.' - '.$value->nama.'</option>';
			}

		
										
	}


	public function kelas_nilai_walas()
	{
		$sekolah_id 		= $this->input->post('sekolah_id');
		$level_kelas_id 	= $this->input->post('level_kelas_id');
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		if($sekolah_id == 'all'){
			$filter_sekolah_id = "sekolah_id > 0";
		}else{
			$filter_sekolah_id = "sekolah_id = " .$sekolah_id;
		}


		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "level_kelas_id = " .$level_kelas_id;
		}

		$group_id = $this->session->userdata('active_user')->group_id;
		$users_id = $this->session->userdata('active_user')->id;

		//guru
		if($group_id == '3')
		{	

			$guru_id = $this->db->query("SELECT id FROM guru WHERE users_id = '$users_id' AND softdelete = '0'")->row()->id;
			$filter_walas_id = "guru_id = " .$guru_id;

		}else{

			$filter_walas_id = "guru_id > 0";
		}


			$query = $this->db->query("SELECT id, nama FROM kelas WHERE $filter_sekolah_id 
							AND jenis_kelas_id = '1'
							AND $filter_level_kelas_id
							AND $filter_walas_id
							AND nama_tahun = '$nama_tahun'
							AND softdelete = '0'")->result();


			echo '<option value="all"> --- '.$this->lang->line('filter_pilih').' --- </option>';
			foreach ($query as $key => $value) {
				echo '<option value="'.$value->id.'">'.$value->nama.'</option>';
			}

		
										
	}
}
