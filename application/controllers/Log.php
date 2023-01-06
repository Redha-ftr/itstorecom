<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Log extends Base_Controller {

	/**
     * List of Logs
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
		$this->data['title'] = $this->lang->line('menu_log');
		$this->data['subview'] = 'log/main';
		$this->load->view('components/main', $this->data);
		$this->load->language('siakad', $this->session->userdata('language'));
	}

	/**
     * Log Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function form()
	{
		$ata['title'] = $this->lang->line('menu_log');
		$data['index'] = $this->input->post('index');
		$data['id'] = $this->input->post('id');
		$this->load->view('log/form', $data);
	}

	/**
     * Datagrid Data
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function data()
	{
        header('Content-Type: application/json');
        $this->load->model('log_m');
		echo json_encode($this->log_m->getJson($this->input->post()));
	}


}
