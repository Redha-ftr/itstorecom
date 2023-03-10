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
        $query = $this->db->from('artikel u')
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
		$query = $this->db->from('artikel u')
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
		$table  = 'artikel as a';
		$select = 'a.id, a.judul, a.deskripsi, SUBSTR(a.deskripsi, 1, 80) AS deskripsi_format';

		$replace_field  = [
			['old_name' => 'judul', 'new_name' => 'a.judul'],
			['old_name' => 'deskripsi_format', 'new_name' => 'a.deskripsi']
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