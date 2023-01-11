<?php

class Frontend_m extends CI_Model {

	function __construct()
	{
		parent::__construct();

	}


    public function artikel()
    {
        $query = $this->db->from('artikel')
                        ->select('id, judul, deskripsi, images, SUBSTR(deskripsi, 1, 80) AS deskripsi_format')
                        ->where('softdelete', '0')
                        ->order_by('id', 'DESC')
                        ->limit('8')
                        ->get();

        return $query->result();
    }


    public function slider_promo()
    {
        $query = $this->db->from('slider_promo')
                        ->select('slider, promo_1, promo_2, promo_3')
                        ->where('id', '1')
                        ->where('softdelete', '0')
                        ->get();

        return $query->row();
    }
	
}