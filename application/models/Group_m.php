<?php

class Group_m extends CI_Model {   

    function __construct()
    {
        parent::__construct();
        $this->load->library('datagrid');
    }

    /**
     * Get List of Groups
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function all()
    {
    	$groups = $this->db->where('softdelete','0')->get('groups')->result();
		return $groups;
    }

    /**
     * Get Group by ID
     *
     * @access  public
     * @param   
     * @return  json(array)
     */

    public function get_group_karyawan()
    {

        $id = array('1','2', '3');

        $query = $this->db->from('groups g')
                        ->select('g.*')
                        ->where_not_in('id', $id)
                        ->get();

        return $query->result();
    }

    public function get_group($id)
    {
        $query = $this->db->from('groups g')
                        ->select('g.*')
                        ->where('g.id', $id)
                        ->get();

        return $query->row();
    }

    /**
     * Datagrid Data
     *
     * @access  public
     * @param   
     * @return  json(array)
     */

    public function getJson($input)
    {
        $table  = 'groups as a';
        $select = 'a.*';

        $replace_field  = [
            ['old_name' => 'group_name', 'new_name' => 'a.group_name']
        ];

        $param = [
            'input'     => $input,
            'select'    => $select,
            'table'     => $table,
            'replace_field' => $replace_field
        ];

        $data = $this->datagrid->query($param, function($data) use ($input) {
            return $data->where('a.softdelete','0');
        });

        return $data;
    }

}