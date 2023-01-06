<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Uploader extends CI_Controller {

	/**
     * Upload Files
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function __construct()
    {
        parent::__construct();
		$this->load->language('siakad', $this->session->userdata('language'));
    }
    	
	public function upload()
	{
		$config['upload_path'] = './upload/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx';
		$this->load->library('upload', $config);
		$this->upload->do_upload('file');

		$arr = [
			'file_name' => $this->upload->data('file_name'),
			'file_size' => $this->upload->data('file_size'),
			'file_type' => $this->upload->data('file_type'),
			'file_thumbnail' => in_array($this->upload->data('file_type'), ['image/png', 'image/jpg', 'image/jpeg', 'application/doc', 'application/docx', 'application/ppt', 'application/pptx', 'application/pdf', 'application/pps', 'application/ppsx', 'application/xls', 'application/xlsx']) ? base_url() . 'upload/' . $this->upload->data('file_name') : ''
		];

		echo json_encode($arr);
	}

	/**
     * List of Uploaded Files
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function files()
	{
		$dir = "upload/";
		$a = scandir($dir);
		$b = scandir($dir, 1);
		$page = $_GET['page'];
		$files_per_page = $_GET['files_per_page'];
		$search = $_GET['search_file'];
		$arr_new = [];

		foreach ($b as $key => $file) {
			$finfo = finfo_open(FILEINFO_MIME_TYPE);
			$mime = finfo_file($finfo, $dir . $file);
			finfo_close($finfo);

			if ($mime != 'directory') {
				if (!empty($search)) {
					if (strpos($file, $search) !== false) {
						$arr_new[] = [
							'file_name' => $file,
							'file_size' => filesize($dir . $file),
							'file_type' => $mime,
							'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
						];
					}
				} else {
					$arr_new[] = [
						'file_name' => $file,
						'file_size' => filesize($dir . $file),
						'file_type' => $mime,
						'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
					];
				}
			}
		}

		$arr_paginated = array_slice($arr_new, (($page * $files_per_page) - $files_per_page), $files_per_page);

		$arr = [
			'files' => $arr_paginated,
			'total' => count($arr_new)
		];

		echo json_encode($arr);
	}

		public function upload_siswa()
	{
		$config['upload_path'] = './upload/siswa/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx';
		$this->load->library('upload', $config);
		$this->upload->do_upload('file');

		$arr = [
			'file_name' => $this->upload->data('file_name'),
			'file_size' => $this->upload->data('file_size'),
			'file_type' => $this->upload->data('file_type'),
			'file_thumbnail' => in_array($this->upload->data('file_type'), ['image/png', 'image/jpg', 'image/jpeg', 'application/doc', 'application/docx', 'application/ppt', 'application/pptx', 'application/pdf', 'application/pps', 'application/ppsx', 'application/xls', 'application/xlsx']) ? base_url() . 'upload/siswa/' . $this->upload->data('file_name') : ''
		];

		echo json_encode($arr);
	}

	/**
     * List of Uploaded Files
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function files_siswa()
	{
		$dir = "upload/siswa/";
		$a = scandir($dir);
		$b = scandir($dir, 1);
		$page = $_GET['page'];
		$files_per_page = $_GET['files_per_page'];
		$search = $_GET['search_file'];
		$arr_new = [];

		foreach ($b as $key => $file) {
			$finfo = finfo_open(FILEINFO_MIME_TYPE);
			$mime = finfo_file($finfo, $dir . $file);
			finfo_close($finfo);

			if ($mime != 'directory') {
				if (!empty($search)) {
					if (strpos($file, $search) !== false) {
						$arr_new[] = [
							'file_name' => $file,
							'file_size' => filesize($dir . $file),
							'file_type' => $mime,
							'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
						];
					}
				} else {
					$arr_new[] = [
						'file_name' => $file,
						'file_size' => filesize($dir . $file),
						'file_type' => $mime,
						'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
					];
				}
			}
		}

		$arr_paginated = array_slice($arr_new, (($page * $files_per_page) - $files_per_page), $files_per_page);

		$arr = [
			'files' => $arr_paginated,
			'total' => count($arr_new)
		];

		echo json_encode($arr);
	}

		public function upload_guru()
	{
		$config['upload_path'] = './upload/guru/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx';
		$this->load->library('upload', $config);
		$this->upload->do_upload('file');

		$arr = [
			'file_name' => $this->upload->data('file_name'),
			'file_size' => $this->upload->data('file_size'),
			'file_type' => $this->upload->data('file_type'),
			'file_thumbnail' => in_array($this->upload->data('file_type'), ['image/png', 'image/jpg', 'image/jpeg', 'application/doc', 'application/docx', 'application/ppt', 'application/pptx', 'application/pdf', 'application/pps', 'application/ppsx', 'application/xls', 'application/xlsx']) ? base_url() . 'upload/guru/' . $this->upload->data('file_name') : ''
		];

		echo json_encode($arr);
	}

	/**
     * List of Uploaded Files
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function files_guru()
	{
		$dir = "upload/guru/";
		$a = scandir($dir);
		$b = scandir($dir, 1);
		$page = $_GET['page'];
		$files_per_page = $_GET['files_per_page'];
		$search = $_GET['search_file'];
		$arr_new = [];

		foreach ($b as $key => $file) {
			$finfo = finfo_open(FILEINFO_MIME_TYPE);
			$mime = finfo_file($finfo, $dir . $file);
			finfo_close($finfo);

			if ($mime != 'directory') {
				if (!empty($search)) {
					if (strpos($file, $search) !== false) {
						$arr_new[] = [
							'file_name' => $file,
							'file_size' => filesize($dir . $file),
							'file_type' => $mime,
							'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
						];
					}
				} else {
					$arr_new[] = [
						'file_name' => $file,
						'file_size' => filesize($dir . $file),
						'file_type' => $mime,
						'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
					];
				}
			}
		}

		$arr_paginated = array_slice($arr_new, (($page * $files_per_page) - $files_per_page), $files_per_page);

		$arr = [
			'files' => $arr_paginated,
			'total' => count($arr_new)
		];

		echo json_encode($arr);
	}
			public function upload_karyawan()
	{
		$config['upload_path'] = './upload/karyawan/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx';
		$this->load->library('upload', $config);
		$this->upload->do_upload('file');

		$arr = [
			'file_name' => $this->upload->data('file_name'),
			'file_size' => $this->upload->data('file_size'),
			'file_type' => $this->upload->data('file_type'),
			'file_thumbnail' => in_array($this->upload->data('file_type'), ['image/png', 'image/jpg', 'image/jpeg', 'application/doc', 'application/docx', 'application/ppt', 'application/pptx', 'application/pdf', 'application/pps', 'application/ppsx', 'application/xls', 'application/xlsx']) ? base_url() . 'upload/karyawan/' . $this->upload->data('file_name') : ''
		];

		echo json_encode($arr);
	}

	/**
     * List of Uploaded Files
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function files_karyawan()
	{
		$dir = "upload/karyawan/";
		$a = scandir($dir);
		$b = scandir($dir, 1);
		$page = $_GET['page'];
		$files_per_page = $_GET['files_per_page'];
		$search = $_GET['search_file'];
		$arr_new = [];

		foreach ($b as $key => $file) {
			$finfo = finfo_open(FILEINFO_MIME_TYPE);
			$mime = finfo_file($finfo, $dir . $file);
			finfo_close($finfo);

			if ($mime != 'directory') {
				if (!empty($search)) {
					if (strpos($file, $search) !== false) {
						$arr_new[] = [
							'file_name' => $file,
							'file_size' => filesize($dir . $file),
							'file_type' => $mime,
							'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
						];
					}
				} else {
					$arr_new[] = [
						'file_name' => $file,
						'file_size' => filesize($dir . $file),
						'file_type' => $mime,
						'file_thumbnail' =>  in_array(explode('/', $mime)[1], ['png','jpg','jpeg','doc','docx','ppt','pptx','pdf','pps','ppsx','xls','xlsx']) ? base_url() . $dir . $file : ''
					];
				}
			}
		}

		$arr_paginated = array_slice($arr_new, (($page * $files_per_page) - $files_per_page), $files_per_page);

		$arr = [
			'files' => $arr_paginated,
			'total' => count($arr_new)
		];

		echo json_encode($arr);
	}

}
