<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Group extends Base_Controller {

	/**
     * List of Groups
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
		$log_akses = log_akses('View','Melihat Group');

		$this->data['title'] = $this->lang->line('menu_group');
		$this->data['subview'] = 'group/main';
		$this->load->view('components/main', $this->data);
	}

	/**
     * Group Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function form()
	{
		$data['title'] = $this->lang->line('menu_group');
		$data['index'] = $this->input->post('index');
		$this->load->view('group/form', $data);
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
        $this->load->model('group_m');
		echo json_encode($this->group_m->getJson($this->input->post()));
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
				'field' => 'group_name',
				'label' => 'Group Name',
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
     * Create a New Group
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function create()
	{
		$data['group_name'] = $this->input->post('group_name');
		$data['view'] 		= $this->input->post('view');
		$data['create'] 	= $this->input->post('create');
		$data['update'] 	= $this->input->post('update');
		$data['delete'] 	= $this->input->post('delete');
		//log
		$data['users_created']   	= $this->session->userdata('active_user')->id;
		$data['users_updated']   	= $this->session->userdata('active_user')->id;
		$data['created_at']   		= date('Y-m-d H:i:s');
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['softdelete']   		= '0';

		$this->db->insert('groups', $data); 

		//log data
		$record_id  = $this->db->insert_id();
		$log_akses 	= log_akses('Create','Tambah Group');
		$log_change = log_change($log_akses,'groups', $record_id, $data);

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Update Existing Group
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function update()
	{
		$data['group_name'] = $this->input->post('group_name');
		$data['view'] 		= $this->input->post('view');
		$data['create'] 	= $this->input->post('create');
		$data['update'] 	= $this->input->post('update');
		$data['delete'] 	= $this->input->post('delete');
		//log
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['users_updated']   	= $this->session->userdata('active_user')->id;

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('groups', $data); 


		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Update','Ubah Group');
		$log_change = log_change($log_akses,'groups', $record_id, $data);

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Delete a Group
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
		$this->db->update('groups', $data); 

		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Delete','Hapus Group');
		$log_change = log_change($log_akses,'groups', $record_id, $data);


	}

}
