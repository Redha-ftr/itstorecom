<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Base_Controller {

	/**
     * List of Categorys
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function __construct()
    {
        parent::__construct();
        
		$this->load->model('category_m');
		$this->load->language('siakad', $this->session->userdata('language'));
    }
	

	       
	
	public function index()
	{
		$this->data['title'] = $this->lang->line('menu_kategori');
		$this->data['subview'] = 'category/main';
		$this->load->view('components/main', $this->data);
	}

	/**
     * Sekolah Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function form()
	{
		$this->load->model('group_m');

		$data['title']			= $this->lang->line('menu_kategori');
		$data['groups'] 		= $this->group_m->all();
		$data['index'] 			= $this->input->post('index');

		$this->load->view('category/form', $data);
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
		echo json_encode($this->category_m->getJson($this->input->post()));
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
				'field' => 'nama_kategori',
				'label' => 'form',
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
     * Create a New Sekolah
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function create()
	{
		$data['nama_kategori']    	= $this->input->post('nama_kategori');
		$data['images']    			= $this->input->post('images');

		//log
		$data['users_created']   		= $this->session->userdata('active_user')->id;
		$data['users_updated']   		= $this->session->userdata('active_user')->id;
		$data['created_at']   			= date('Y-m-d H:i:s');
		$data['updated_at']   			= date('Y-m-d H:i:s');
		$data['softdelete']   			= '0';
		$this->db->insert('kategori', $data); 


		//log data
		$record_id  = $this->db->insert_id();
		$log_akses 	= log_akses('Create','Tambah category');
		$log_change = log_change($log_akses,'kategori', $record_id, $data);


		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Update Existing category
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function update()
	{
		$data['nama_kategori']    	= $this->input->post('nama_kategori');
		$data['images']    			= $this->input->post('images');

		//log
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['users_updated']   	= $this->session->userdata('active_user')->id;

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('kategori', $data); 



		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Update','Ubah category');
		$log_change = log_change($log_akses,'kategori', $record_id, $data);



		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Delete a category
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
		$this->db->update('kategori', $data); 


		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Delete','Hapus category');
		$log_change = log_change($log_akses,'kategori', $record_id, $data);

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

}
