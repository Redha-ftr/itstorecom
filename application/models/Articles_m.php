<?php

class Articles_m extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->library('datagrid');
	}

	/**
     * Check Brand Credentials
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function all()
    {
        $query = $this->db->from('sekolah u')
                        ->select('u.*')
                        ->where('u.softdelete', '0')
                        ->get();

        return $query->result();
    }

	/**
     * Get Brand by ID
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function get_user($id)
	{
		$query = $this->db->from('sekolah u')
						->select('u.*')
						->where('u.id', $id)
						->where('u.softdelete', '0')
						->get();

		return $query->row();
	}

	/**
     * Datagrid Data
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function getJson($input)
	{
		$table  = 'sekolah as a';
		$select = 'a.*';

		$replace_field  = [
			['old_name' => 'nama_sekolah', 'new_name' => 'a.nama_sekolah']
		];

		$param = [
			'input'     => $input,
			'select'    => $select,
			'table'     => $table,
			'replace_field' => $replace_field
		];

		$data = $this->datagrid->query($param, function($data) use ($input) {
			return $data->where('softdelete','0');
		});

		return $data;
	}

}