<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site_setting_slider extends Base_Controller {
	
	/**
     * Change Password Form
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
		$this->data['title'] 	= $this->lang->line('menu_setting_slider');
		$this->data['subview'] 	= 'site_setting_slider/main';
		$this->data['query'] 	= $this->db->query("SELECT * FROM slider_promo WHERE id  = '1'")->row();
		$this->load->view('components/main', $this->data);
	}

	/**
     * Validate Input
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function validate()
	{
		$rules = [
			[
				'field' => 'slider',
				'label' => 'Slider',
				'rules' => 'required'
			]
		];

		$this->load->model('user_m');
		$id = $this->session->userdata('active_user')->id;
		$user = $this->user_m->get_user($id);
		
		$this->form_validation->set_rules($rules);
		if ($this->form_validation->run()) {
			header("Content-type:application/json");
			echo json_encode('success');
		} else {
			header("Content-type:application/json");
			echo json_encode($this->form_validation->get_all_errors());
		}
	}

	/**
     * Save a New Password
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function save()
	{
		$data['slider'] 	= $this->input->post('slider');
		$data['promo_1'] 	= $this->input->post('promo_1');
		$data['promo_2'] 	= $this->input->post('promo_2');
		$data['promo_3'] 	= $this->input->post('promo_3');

		$this->db->where('id', '1');
		$this->db->update('slider_promo', $data);

		header("Content-type:application/json");
		echo json_encode('success');
	}

}
