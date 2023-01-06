<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Language extends Base_Controller {
    public function __construct(){
		parent::__construct();

		$this->load->language('siakad', $this->session->userdata('language'));
	}


	public function index(){
		echo $this->session->userdata('language');
	}

	public function update($id){
		$this->load->model('language_m');
        $this->language_m->set($id);
        redirect($_SERVER['HTTP_REFERER']);
	}
}
