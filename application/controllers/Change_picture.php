<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Change_picture extends Base_Controller {
	
	/**
     * Change Picture Form
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
		$this->data['title'] = $this->lang->line('menu_ubah_profile');
		$this->data['subview'] = 'change_picture/main';
		$this->load->view('components/main', $this->data);
	}

	/**
     * Validate Input
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */




	public function croppie()

	{

		$id 	= $this->session->userdata('active_user')->id;
		$foto  	= date('YmdHis');

		$this->data['NamaFile'] = $foto.'.png';

		$this->load->model('picture_m');
		$this->picture_m->insert($id, $foto);

		$this->load->view('change_picture/croppie', $this->data);   

	}


}
