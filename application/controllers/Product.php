<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Base_Controller {

	/**
     * List of Product
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function __construct()
    {
        parent::__construct();
        
		$this->load->model('product_m');
		$this->load->language('siakad', $this->session->userdata('language'));
    }
	

	       
	
	public function index()
	{
		$this->data['title'] = $this->lang->line('menu_product');
		$this->data['subview'] = 'product/main';
		$this->load->view('components/main', $this->data);
	}

	/**
     * Product Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function form()
	{
		$this->load->model('group_m');

		$data['title']			= $this->lang->line('menu_product');
		$data['groups'] 		= $this->group_m->all();
		$data['index'] 			= $this->input->post('index');

		$this->load->view('product/form', $data);
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
		echo json_encode($this->product_m->getJson($this->input->post()));
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
				'field' => 'nama',
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
     * Create a New Product
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function create()
	{
		$data['nama_sekolah']    	= $this->input->post('nama_sekolah');
		$data['nis_nss_dns']    	= $this->input->post('nis_nss_dns');
		$data['npsn']    			= $this->input->post('npsn');
		$data['alamat_sekolah']    	= $this->input->post('alamat_sekolah');
		$data['kelurahan_desa']    	= $this->input->post('kelurahan_desa');
		$data['kecamatan']   		= $this->input->post('kecamatan');
		$data['kota_kabupaten']    	= $this->input->post('kota_kabupaten');
		$data['provinsi']    		= $this->input->post('provinsi');
		$data['website']   			= $this->input->post('website');
		$data['email']    			= $this->input->post('email');
		$data['telepon']    		= $this->input->post('telepon');
		$data['visi']    			= $this->input->post('visi');
		$data['misi']    			= $this->input->post('misi');
		$data['logo']    			= $this->input->post('logo');
		$data['logo_pemerintah']    = $this->input->post('logo_pemerintah');

		//log
		$data['users_created']   		= $this->session->userdata('active_user')->id;
		$data['users_updated']   		= $this->session->userdata('active_user')->id;
		$data['created_at']   			= date('Y-m-d H:i:s');
		$data['updated_at']   			= date('Y-m-d H:i:s');
		$data['softdelete']   			= '0';
		$this->db->insert('sekolah', $data); 


		//log data
		$record_id  = $this->db->insert_id();
		$log_akses 	= log_akses('Create','Tambah Product');
		$log_change = log_change($log_akses,'sekolah', $record_id, $data);


		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Update Existing Product
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

	public function update()
	{
		$data['nama_sekolah']    	= $this->input->post('nama_sekolah');
		$data['nis_nss_dns']    	= $this->input->post('nis_nss_dns');
		$data['npsn']    			= $this->input->post('npsn');
		$data['alamat_sekolah']    	= $this->input->post('alamat_sekolah');
		$data['kelurahan_desa']    	= $this->input->post('kelurahan_desa');
		$data['kecamatan']   		= $this->input->post('kecamatan');
		$data['kota_kabupaten']    	= $this->input->post('kota_kabupaten');
		$data['provinsi']    		= $this->input->post('provinsi');
		$data['website']   			= $this->input->post('website');
		$data['email']    			= $this->input->post('email');
		$data['telepon']    		= $this->input->post('telepon');
		$data['visi']    			= $this->input->post('visi');
		$data['misi']    			= $this->input->post('misi');
		$data['logo']    			= $this->input->post('logo');
		$data['logo_pemerintah']    = $this->input->post('logo_pemerintah');

		//log
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['users_updated']   	= $this->session->userdata('active_user')->id;

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('sekolah', $data); 



		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Update','Ubah Product');
		$log_change = log_change($log_akses,'sekolah', $record_id, $data);



		header('Content-Type: application/json');
    	echo json_encode('success');
	}

	/**
     * Delete a Product
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
		$this->db->update('sekolah', $data); 


		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Delete','Hapus Product');
		$log_change = log_change($log_akses,'sekolah', $record_id, $data);

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

}
