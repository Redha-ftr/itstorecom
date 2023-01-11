<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Frontend extends CI_Controller {
	
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
        $this->load->model('frontend_m');
		
    }
	
	public function index()
	{
		$this->data['title'] 			= $this->lang->line('frontend');
		$this->data['subview']			= 'frontend/main';
		$this->data['artikel_all'] 		= $this->frontend_m->artikel();
		$this->data['slider_promo'] 	= $this->frontend_m->slider_promo();
		
		$this->load->view('frontend/main', $this->data);

		
	}

	public function category()
	{
		$this->data['title'] 			= $this->lang->line('frontend');
		$this->data['subview']			= 'frontend/main';

		
		$this->load->view('frontend/category', $this->data);

		
	}

	public function product_detail()
	{
		$this->data['title'] 			= $this->lang->line('frontend');
		$this->data['subview']			= 'frontend/main';

		
		$this->load->view('frontend/product_detail', $this->data);

		
	}

}
