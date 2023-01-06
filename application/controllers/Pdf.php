<?php
defined('BASEPATH') OR exit('No direct script access allowed');

		require 'vendor/autoload.php';
		use Spipu\Html2Pdf\Html2Pdf;

class Pdf extends Base_Controller {

	/**
     * Sop Settings
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
    	echo json_encode('errors');
	}


	public function matapelajaran($sekolah_id='',$level_kelas_id='',$semester='')
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');


		if($sekolah_id == 'all'){
			$filter_sekolah_id = "a.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "a.sekolah_id = " .$sekolah_id;
		}

		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "a.level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "a.level_kelas_id = " .$level_kelas_id;
		}

		if($semester == 'all'){
			$filter_semester = "a.semester IN ('Ganjil','Genap')";
		}else{
			$filter_semester = "a.semester = '$semester'";
		}


		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`, `d`.`nama` as `nama_level`, `e`.`nama` as `nama_kurikulum`, `f`.`nama` as `nama_kelompok`
			FROM `matapelajaran` as `a`
			JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
			JOIN `level_kelas` as `d` ON `a`.`level_kelas_id` = `d`.`id`
			JOIN `kurikulum` as `e` ON `a`.`kurikulum_id` = `e`.`id`
			JOIN `kelompok_matapelajaran` as `f` ON `a`.`kelompok_matapelajaran_id` = `f`.`id`
			WHERE $filter_sekolah_id
			AND $filter_level_kelas_id
			AND $filter_semester
			AND `a`.`softdelete` = '0'")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/matapelajaran',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function siswa()
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`, `c`.`nama` as `nama_jenjang`, `d`.`nama` as `nama_jurusan`, `e`.`nama` as `nama_status`
					FROM `siswa` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					JOIN `jenjang` as `c` ON `a`.`jenjang_id` = `c`.`id`
					JOIN `jurusan` as `d` ON `a`.`jurusan_id` = `d`.`id`
					JOIN `status` as `e` ON `a`.`status_id` = `e`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/siswa',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function guru()
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`
					FROM `guru` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/guru',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function jadwal()
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`, `e`.`nama` as `nama_kelas`, `d`.`nama` as `nama_hari`, `f`.`nama_id` as `nama_matapelajaran`, `g`.`nama` as `nama_guru`, `h`.`nama` as `nama_waktu`, `c`.`nama` as `nama_tahun`
					FROM `jadwal` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					JOIN `tahun` as `c` ON `a`.`tahun_id` = `c`.`id`
					JOIN `hari` as `d` ON `a`.`hari_id` = `d`.`id`
					JOIN `kelas` as `e` ON `a`.`kelas_id` = `e`.`id`
					JOIN `matapelajaran` as `f` ON `a`.`matapelajaran_id` = `f`.`id`
					JOIN `guru` as `g` ON `a`.`guru_id` = `g`.`id`
					JOIN `waktu` as `h` ON `a`.`waktu_id` = `h`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/jadwal',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function karyawan()
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`
					FROM `karyawan` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/karyawan',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function kelas($sekolah_id= '', $level_kelas_id ='')
	{

		$html2pdf 		= new Html2Pdf('L', 'A4', 'en');


		if($sekolah_id == 'all'){
			$filter_sekolah_id = "a.sekolah_id > 0";
		}else{
			$filter_sekolah_id = "a.sekolah_id = " .$sekolah_id;
		}

		if($level_kelas_id == 'all'){
			$filter_level_kelas_id = "a.level_kelas_id > 0";
		}else{
			$filter_level_kelas_id = "a.level_kelas_id = " .$level_kelas_id;
		}

		


		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`, `c`.`nama` as `nama_level_kelas`, 
										`d`.`nama` as `nama_guru`
										FROM `kelas` as `a`
										JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
										JOIN `level_kelas` as `c` ON `a`.`level_kelas_id` = `c`.`id`
										JOIN `guru` as `d` ON `a`.`guru_id` = `d`.`id`
										WHERE $filter_sekolah_id
										AND $filter_level_kelas_id
										AND `a`.`softdelete` = '0'")->result();


		$data['query'] 	= $query;
		$content 		= $this->load->view('pdf/kelas',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}

	public function absensi($sekolah_id= '', $level_kelas_id ='', $kelas_id ='', $tanggal ='')
	{

		$html2pdf 		= new Html2Pdf('P', 'A4', 'en');


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
			$filter_kelas_id = "t1.id > 0";
		}else{
			$filter_kelas_id = "t1.id = " .$level_kelas_id;
		}
		
		$nama_tahun 		= get_field($this->session->userdata('tahun_aktif'),'tahun','nama');

		$query = $this->db->query("SELECT t3.id, t3.nis, t3.nama FROM kelas t1 JOIN rombel t2 
			ON t1.id = t2.kelas_id JOIN siswa t3
			ON t2.siswa_id = t3.id
			WHERE $filter_sekolah_id
			AND $filter_level_kelas_id
			AND $filter_kelas_id
			AND t1.nama_tahun = '$nama_tahun'
			AND t1.softdelete = '0'
			ORDER BY t3.nama ASC")->result();


		$data['query'] 					= $query;
		$data['sekolah_id'] 			= $sekolah_id;
		$data['level_kelas_id'] 		= $level_kelas_id;
		$data['kelas_id'] 				= $kelas_id;
		$data['tanggal'] 				= $tanggal;

		//$content 		= $this->load->view('pdf/absensi',$data);

		$content 		= $this->load->view('pdf/absensi',$data,true);
		$html2pdf->writeHTML($content);
		$html2pdf->output();
	}
}
