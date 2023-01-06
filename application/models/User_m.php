<?php

class User_m extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->library('datagrid');
	}

	/**
     * Check User Credentials
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function all()
    {
        $query = $this->db->from('users u')
                        ->select('u.*')
                        ->where('u.softdelete', '0')
                        ->get();

        return $query->result();
    }

    public function all_pic()
    {
        $query = $this->db->from('users u')
                        ->select('u.*')
                        ->where('u.group_id !=', '1')
                        ->where('u.softdelete', '0')
                        ->order_by('u.name','ASC')
                        ->get();

        return $query->result();
    }
	
	public function attempt($input)
	{
		$query = $this->db->from('users u')
						->select('u.*, g.group_name')
						->where('username', $input['username'])
						->where('password', $input['password'])
						->join('groups as g', 'g.id = u.id', 'left')
						->get();

		return $query->row();
	}

	public function forgot($input)
	{
		$query = $this->db->from('users u')
						->select('u.*')
						->where('email', $input['email'])
						->get();

		return $query->row();
	}

	/**
     * Get User by ID
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function get_user($id)
	{
		$query = $this->db->from('users u')
						->select('u.*, g.group_name')
						->where('u.id', $id)
						->join('groups as g', 'g.id = u.id', 'left')
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
		$table  = 'users as a';
		$select = 'a.*, g.group_name';

		$replace_field  = [
			['old_name' => 'name', 'new_name' => 'a.name'],
			['old_name' => 'group_name', 'new_name' => 'g.group_name'],
		];

		$param = [
			'input'     => $input,
			'select'    => $select,
			'table'     => $table,
			'replace_field' => $replace_field
		];

		$data = $this->datagrid->query($param, function($data) use ($input) {
			return $data->join('groups as g', 'g.id = a.group_id', 'left')
						->where('a.softdelete', '0');
		});

		return $data;
	}

}