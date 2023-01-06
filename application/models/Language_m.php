<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Language_m extends CI_Model {	

	public function set($id = 1){
		$language =$this->db->select('language')->where('id',$id)->get('languages')->row()->language;
		if(!empty($language)){
        	$this->session->set_userdata(array('language'  => $language,'language_id'  => $id));	
    	}
    	else{
    		echo "Something went wrong!Contact Admin!!";exit();
    	}
	}

}
