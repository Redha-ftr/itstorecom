<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Excel extends Base_Controller {
	
	/**
* Dashboard
*
* @access  public
* @param
* @return  view
*/
	function __construct()
	{
		parent::__construct();
		$this->load->language('siakad', $this->session->userdata('language'));

	}
	
	public function index()
	{
						
		header('Content-Type: application/json');
    	echo json_encode('errors');
	}


	public function siswa()
	{
		
		include_once APPPATH.'/third_party/xlsxwriter.class.php';

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`, `c`.`nama` as `nama_jenjang`, `d`.`nama` as `nama_jurusan`, `e`.`nama` as `nama_status`
					FROM `siswa` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					JOIN `jenjang` as `c` ON `a`.`jenjang_id` = `c`.`id`
					JOIN `jurusan` as `d` ON `a`.`jurusan_id` = `d`.`id`
					JOIN `status` as `e` ON `a`.`status_id` = `e`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();

		


	  $filename = "siswa-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Nama'=>'string', 
	    'NIS'=>'string',  
        'Tahun Masuk'=>'string',  
        'Sekolah'=>'string',    
        'Jurusan'=>'string', 
        'Status'=>'string'
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama, 
	    								$value->nis, 
	    								$value->diterima_tanggal, 
	    								$value->nama_jenjang, 
	    								$value->nama_jurusan, 
	    								$value->nama_status],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}

	public function matapelajaran($sekolah_id='',$level_kelas_id='',$semester='')
	{
		

	  include_once APPPATH.'/third_party/xlsxwriter.class.php';


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

		


	  $filename = "matapelajaran-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Sekolah'=>'string', 
	    'Kelas'=>'string',  
        'Semester'=>'string',  
        'Nama (Indonesia)'=>'string',    
        'Nama (English)'=>'string', 
        'Kelompok'=>'string',   
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama_sekolah, 
	    								$value->nama_level, 
	    								$value->semester, 
	    								$value->nama_id, 
	    								$value->nama_en, 
	    								$value->nama_kelompok],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}

	public function guru()
	{
		

	  include_once APPPATH.'/third_party/xlsxwriter.class.php';

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`
					FROM `guru` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();
		


	  $filename = "matapelajaran-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Nama'=>'string', 
	    'Nomor ID Guru'=>'string',  
	    'NUPTK'=>'string',  
        'Sekolah'=>'string',  
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama, 
	    								$value->nik, 
	    								$value->nuptk, 
	    								$value->nama_sekolah],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}

	public function jadwal()
	{
		

	  include_once APPPATH.'/third_party/xlsxwriter.class.php';

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
		


	  $filename = "matapelajaran-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Sekolah'=>'string', 
	    'Tahun Ajaran'=>'string',  
	    'Kelas'=>'string',  
        'Hari'=>'string',  
        'Mata Pelajaran'=>'string',  
        'Guru'=>'string',  
        'Waktu'=>'string',  
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama_sekolah, 
	    								$value->nama_tahun, 
	    								$value->nama_kelas, 
	    								$value->nama_hari,
	    								$value->nama_matapelajaran, 
	    								$value->nama_guru, 
	    								$value->nama_waktu
	    							],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}

	public function karyawan()
	{
		

	  include_once APPPATH.'/third_party/xlsxwriter.class.php';

		$query = $this->db->query("SELECT `a`.*, `b`.`nama_sekolah`
					FROM `karyawan` as `a`
					JOIN `sekolah` as `b` ON `a`.`sekolah_id` = `b`.`id`
					WHERE `a`.`softdelete` = '0'
					ORDER BY `id` ASC")->result();
		


	  $filename = "matapelajaran-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Nama'=>'string', 
	    'Nomor ID Karyawan'=>'string',  
	    'Sekolah'=>'string',  
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama, 
	    								$value->nip, 
	    								$value->nama_sekolah, 
	    							],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}

	public function kelas($sekolah_id= '', $level_kelas_id ='')
	{
		

	  include_once APPPATH.'/third_party/xlsxwriter.class.php';


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
		


	  $filename = "kelas-".date('d-m-Y-H-i-s').".xlsx";
	  header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
	  header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	  header('Content-Transfer-Encoding: binary');
	  header('Cache-Control: must-revalidate');
	  header('Pragma: public');


	  $styles = array('widths'=>[5,50,50,50,50], 'height'=>50, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#fff', 'halign'=>'center', 'border'=>'left,right,top,bottom');




	  $writer = new XLSXWriter();
	  $writer->setAuthor('SmartSchool');

	  $header = array(
	    'No '=>'integer', 
	    'Sekolah'=>'string', 
	    'Level Kelas'=>'string',  
	    'Nama Kelas'=>'string', 
	    'Wali Kelas'=>'string',  
	  );


	  $writer->writeSheetHeader('Sheet1',$header, $styles);
	  


	$no = 1;
	foreach($query as $value){



			$styles2 = array('height'=>30, 'font'=>'Arial','font-size'=>12,'font-style'=>'bold', 'fill'=>'#ffa366', 'halign'=>'center', 'border'=>'left,right,top,bottom');
		

	    $writer->writeSheetRow('Sheet1',[$no, 
	    								$value->nama_sekolah, 
	    								$value->nama_level_kelas, 
	    								$value->nama, 
	    								$value->nama_guru
	    							],
	    								$styles2);

	    $no++;
	  }
	  $writer->writeToStdOut();
	}
}