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
		$data['nama_produk']    	= $this->input->post('nama_produk');
		$data['sku']    	= $this->input->post('sku');
		$data['code']    			= $this->input->post('code');
		$data['berat']    	= $this->input->post('berat');
		$data['kategori_id']    	= $this->input->post('kategori_id');
		$data['subkategori_id']   		= $this->input->post('subkategori_id');
		$data['brand_id']    	= $this->input->post('brand_id');
		$data['kategori_brand']    		= $this->input->post('kategori_brand');
		$data['tags']   			= $this->input->post('tags');
		$data['deskripsi']    			= $this->input->post('deskripsi');
		$data['harga']    		= $this->input->post('harga');
		$data['stok']    			= $this->input->post('stok');
		$data['images']    			= $this->input->post('images');
		$data['images_detail']    			= $this->input->post('images_detail');
		$data['harga_promo']    			= $this->input->post('harga_promo');
		$data['link_wa']    			= $this->input->post('link_wa');
		$data['official_brand_id']    			= $this->input->post('official_brand_id');
		$data['bestseller_id']    			= $this->input->post('bestseller_id');

		//log
		$data['users_created']   		= $this->session->userdata('active_user')->id;
		$data['users_updated']   		= $this->session->userdata('active_user')->id;
		$data['created_at']   			= date('Y-m-d H:i:s');
		$data['updated_at']   			= date('Y-m-d H:i:s');
		$data['softdelete']   			= '0';
		$this->db->insert('product', $data); 


		//log data
		$record_id  = $this->db->insert_id();
		$log_akses 	= log_akses('Create','Tambah Product');
		$log_change = log_change($log_akses,'product', $record_id, $data);


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
		$data['nama_produk']    	= $this->input->post('nama_produk');
		$data['sku']    	= $this->input->post('sku');
		$data['code']    			= $this->input->post('code');
		$data['berat']    	= $this->input->post('berat');
		$data['kategori_id']    	= $this->input->post('kategori_id');
		$data['subkategori_id']   		= $this->input->post('subkategori_id');
		$data['brand_id']    	= $this->input->post('brand_id');
		$data['kategori_brand']    		= $this->input->post('kategori_brand');
		$data['tags']   			= $this->input->post('tags');
		$data['deskripsi']    			= $this->input->post('deskripsi');
		$data['harga']    		= $this->input->post('harga');
		$data['stok']    			= $this->input->post('stok');
		$data['images']    			= $this->input->post('images');
		$data['images_detail']    			= $this->input->post('images_detail');
		$data['harga_promo']    			= $this->input->post('harga_promo');
		$data['link_wa']    			= $this->input->post('link_wa');
		$data['official_brand_id']    			= $this->input->post('official_brand_id');
		$data['bestseller_id']    			= $this->input->post('bestseller_id');

		//log
		$data['updated_at']   		= date('Y-m-d H:i:s');
		$data['users_updated']   	= $this->session->userdata('active_user')->id;

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('product', $data); 



		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Update','Ubah Product');
		$log_change = log_change($log_akses,'product', $record_id, $data);



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
		$this->db->update('product', $data); 


		//log data
		$record_id  = $this->input->post('id');
		$log_akses 	= log_akses('Delete','Hapus Product');
		$log_change = log_change($log_akses,'product', $record_id, $data);

		header('Content-Type: application/json');
    	echo json_encode('success');
	}

}
