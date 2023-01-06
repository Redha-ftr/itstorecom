<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Base_Controller {

	/**
     * List of Users
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
		$this->data['title'] = $this->lang->line('menu_user');
		$this->data['subview'] = 'user/main';
		$this->load->view('components/main', $this->data);
	}

	/**
     * User Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function form()
	{
		$this->load->model('group_m');

		$data['groups'] 		= $this->group_m->all();
		$data['index'] 			= $this->input->post('index');

		$this->load->view('user/form', $data);
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
        $this->load->model('user_m');
		echo json_encode($this->user_m->getJson($this->input->post()));
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
				'field' => 'name',
				'label' => 'Name',
				'rules' => 'required'
			],
			[
				'field' => 'password',
				'label' => 'Password',
				'rules' => 'required'
			],
			[
				'field' => 'group_id',
				'label' => 'Group Id',
				'rules' => 'required'
			]
		];

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
     * Create Update Action
     *
     * @access 	public
     * @param 	
     * @return 	method
     */

	public function action()
	{
		if (!$this->input->post('id')) {
			$this->create();
		} else {
			$this->update();
		}
	}

	/**
     * Create a New User
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function create()
	{
		$data['name'] 				= $this->input->post('name');
		$data['password']   		= $this->input->post('password');
		$data['group_id']   		= $this->input->post('group_id');
		$this->db->insert('users', $data); 

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Update Existing User
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function update()
	{
		$data['name'] 				= $this->input->post('name');
		$data['password']   		= $this->input->post('password');
		$data['group_id']   		= $this->input->post('group_id');
		$this->db->where('id', $this->input->post('id'));
		$this->db->update('users', $data); 

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Delete a User
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function delete()
	{
		$data['softdelete']   		= '1';

		//log
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['users_updated']   	= $this->session->userdata('active_user')->id;
		
		$this->db->where('id', $this->input->post('id'));
		$this->db->update('users', $data); 
	}

}
