<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Base_Controller {
	
	/**
     * Dashboard
     *
     * @access  public
     * @param   
     * @return  view
     */
	public function __construct()
    {
        parent::__construct();
        
        $this->load->language('siakad', $this->session->userdata('language'));
		
    }
	
	public function index()
	{
		$this->data['title'] 			= $this->lang->line('dashboard');
		$this->data['subview']			= 'dashboard/main';


		$this->data['tot_siswa']		= 0;

		$this->data['tot_guru']			= 0;

		$this->data['tot_karyawan']		= 0;

		$this->data['tot_kelas']		= 0;
		
		$this->load->view('components/main', $this->data);

		
	}

}
