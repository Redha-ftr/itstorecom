<?php
if(!function_exists('get_field')){
	function get_field($id,$namatabel,$namafield='Nama')
	{
		if(!empty($id)){
			$ci = &get_instance();
			$ci->db->SELECT($namafield." as field");
			$ci->db->WHERE('ID',$id);
			$Q=$ci->db->get($namatabel)->row();
			if(!empty($Q)){
				$value = $Q->field;
			}else{
				$value = '';
			}
		}else{
			$value = '';
		}
		return $value;
	}
}

if(!function_exists('get_access_create')){
	function get_access_create($id)
	{
		$ci = &get_instance();
		$value = $ci->db->query("SELECT * FROM groups
			WHERE id = '$id' AND `create` = 'Yes'")->num_rows();
		return $value;
	}
}


if(!function_exists('get_table')){
	function get_table($table='', $field_1='', $field_2='', $field_3='')
	{
		$field_1 = !empty($field_1) ? $field_1 : 'id';
		$field_2 = !empty($field_2) ? $field_2 : 'created_at';
		$field_3 = !empty($field_3) ? $field_3 : 'users_created';


		$ci = &get_instance();
		$value = $ci->db->query("SELECT $field_1, $field_2, $field_3 FROM $table
			WHERE softdelete = '0'")->result();
		return $value;
	}
}

if(!function_exists('get_access_update')){
	function get_access_update($id)
	{
		$ci = &get_instance();
		$value = $ci->db->query("SELECT * FROM groups
			WHERE id = '$id' AND `update` = 'Yes'")->num_rows();
		return $value;
	}
}

if(!function_exists('get_access_delete')){
	function get_access_delete($id)
	{
		$ci = &get_instance();
		$value = $ci->db->query("SELECT * FROM groups
			WHERE id = '$id' AND `delete` = 'Yes'")->num_rows();
		return $value;
	}
}

if(!function_exists('get_kompetensi_matapelajaran')){
	function get_kompetensi_matapelajaran($matapelajaran_id, $nilai_huruf, $field)
	{

	$ci = &get_instance();
	
	$query = $ci->db->query("SELECT $field FROM matapelajaran_kompetensi WHERE matapelajaran_id = '$matapelajaran_id' AND nilai_huruf = '$nilai_huruf' AND softdelete - '0'");

	$kompetensi = ($query->num_rows() > 0) ? $query->row()->$field : ' --- ';

	return $kompetensi;
}
}

if(!function_exists('get_field_company')){
	function get_field_company($company_id,$meta_key)
	{
		if(!empty($company_id)){
			$ci = &get_instance();
			$query = $ci->db->query("SELECT meta_value FROM company_detail WHERE softdelete = '0' AND company_id = '$company_id' AND meta_key = '$meta_key'");
			if(!empty($query->num_rows())){
				$value = $query->row()->meta_value;
			}else{
				$value = '';
			}
		}else{
			$value = '';
		}
		return $value;
	}
}
if(!function_exists('get_photo')){
	function get_photo($foto,$jk,$namatabel,$class='')
	{
		if($foto)
		{
			$path = "foto/".$foto;
		}
		elseif($jk == "L")
		{
			$path = "assets/images/default_".$namatabel.".png";
		}
		elseif($jk == "P")
		{
			$path = "assets/images/default_".$namatabel."_2.png";
		}
		else
		{
			$path = "assets/images/tanda_tanya.png";
		}
		return '<img class="'.$class.'" src="'.base_url().$path.'">';
	}
}
if ( ! function_exists('getIp'))
{
	function getIp() {
		$ip = $_SERVER['REMOTE_ADDR'];
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		return $ip;
	}
}
if(!function_exists('log_akses')){
	function log_akses($aksi,$note)
	{
		$ci = &get_instance();
		$input["IP"]				= getIp();
		$input["aktifitas"]			= $aksi;
		$input["note" ]				= $note;
		$input["akses"]				= get_field($ci->session->userdata('active_user')->group_id,'groups','group_name');
		$input["url"]				= current_url();
		$input["users_id"]			= $ci->session->userdata('active_user')->id;
		$input["username"]				= $ci->session->userdata('active_user')->username;
		$input["users_created"] 	= $ci->session->userdata('active_user')->id;
		$input["users_updated"] 	= $ci->session->userdata('active_user')->id;
		$input["created_at"] 		= date('Y-m-d H:i:s');
		$input["updated_at"] 		= date('Y-m-d H:i:s');
		$input["softdelete"] 		= '0';
		$ci->db->insert("log",$input);
		return $ci->db->insert_id();
	}
}
if(!function_exists('log_change')){
	function log_change($log_id, $table, $record_id, $data)
	{
		$ci = &get_instance();
		$input["log_id"]     		= $log_id;
		$input["table"]      		= $table;
		$input["record_id"]     	= $record_id;
		$input["data"]   			= json_encode($data);
		$input["users_created"] 	= $ci->session->userdata('active_user')->id;
		$input["users_updated"] 	= $ci->session->userdata('active_user')->id;
		$input["created_at"] 		= date('Y-m-d H:i:s');
		$input["updated_at"] 		= date('Y-m-d H:i:s');
		$input["softdelete"] 		= '0';
		return $ci->db->insert("log_change",$input);
	}
}
if(!function_exists('get_access')){
	function get_access($id,$link)
	{
		$ci = &get_instance();
		$value = $ci->db->query("SELECT * FROM menus JOIN `privileges`
			ON menus.id = privileges.menu_id
			WHERE menus.link = '$link'
			AND `privileges`.group_id = '$id'")->num_rows();
		return $value;
	}
}
if(!function_exists('get_selisih')){
	function get_selisih($tgl)
	{
		$sekarang = date('Y-m-d');
		$selisih = strtotime($tgl) - strtotime($sekarang);
		$hari = $selisih/(60*60*24);
		if($hari > 0){
			$value = '<span style="font-weight: bold;color: #ff6600;font-size: 16px;">' .$hari.' HARI LAGI </span>';
		}elseif($hari == '0') {
			$value = '<span style="font-weight: bold;color: #ff0000;font-size: 16px;">HARI INI </span>';
		}else{
			$value = '<span style="font-size: 16px;padding: 4px 6px;font-weight: bold;color: #ffffff; background-color: #ff0000;  -webkit-border-radius: 50px; -moz-border-radius: 50px; -ms-border-radius: 50px; -o-border-radius: 50px;border-radius: 50px;"> LEWAT ' .($hari * -1).' HARI </span>';
		}
		return $value;
	}
}
if(!function_exists('cetak_header_excel')){
	function cetak_header_excel($col='7')
	{
		$ci = &get_instance();
		$Q = $ci->db->get("settings");
		$raw = $Q->num_rows();
		if($raw>0)
		{
			$header = '
			<table class="header" width="100%">
				<tr>
					<td width="100%" colspan="'.$col.'" style="text-align:center;"></td>
				</tr>
				<tr>
					<td colspan="'.$col.'" style="text-align:center;">'.get_field('5','settings','meta_value').' '.get_field('1','settings','meta_value').'</td>
				</tr>
				<tr>
					<td colspan="'.$col.'" style="text-align:center;">'.get_field('2','settings','meta_value').'</td>
				</tr>
				<tr>
					<td colspan="'.$col.'" style="text-align:center;">Email: '.get_field('4','settings','meta_value').'&nbsp; Telp: '.get_field('3','settings','meta_value').'</td>
				</tr>
			</table>
			<hr>
			';
		}
		else
		{
			$header = '';
		}
		return $header;
	}
}
if(!function_exists('level_crud')){
	function level_crud($crud)
	{
		$ci = &get_instance();
		$group_id = $ci->session->userdata('active_user')->group_id;
		if($crud == 'create'){
			$value = $ci->db->query("SELECT `create` FROM groups WHERE id = '$group_id'")->row()->create;
		}elseif($crud == 'update'){
			$value = $ci->db->query("SELECT `update` FROM groups WHERE id = '$group_id'")->row()->update;
		}else{
			$value = $ci->db->query("SELECT `delete` FROM groups WHERE id = '$group_id'")->row()->delete;
		}
		return $value;
		}
}
if(!function_exists('terbilang')){
	function terbilang($n)
	{
if ($n < 0) return 'minus ' . terbilang(-$n);
else if ($n < 10) {
switch ($n) {
case 0: return 'zero';
case 1: return 'one';
case 2: return 'two';
case 3: return 'three';
case 4: return 'four';
case 5: return 'five';
case 6: return 'six';
case 7: return 'seven';
case 8: return 'eight';
case 9: return 'nine';
}
}
else if ($n < 100) {
$kepala = floor($n/10);
$sisa = $n % 10;
if ($kepala == 1) {
if ($sisa == 0) return 'ten';
else if ($sisa == 1) return 'eleven';
else if ($sisa == 2) return 'twelve';
else if ($sisa == 3) return 'thirteen';
else if ($sisa == 5) return 'fifteen';
else if ($sisa == 8) return 'eighteen';
else return terbilang($sisa) . 'teen';
}
else if ($kepala == 2) $hasil = 'twenty';
else if ($kepala == 3) $hasil = 'thirty';
else if ($kepala == 5) $hasil = 'fifty';
else if ($kepala == 8) $hasil = 'eighty';
else $hasil = terbilang($kepala) . 'ty';
}
else if ($n < 1000) {
$kepala = floor($n/100);
$sisa = $n % 100;
$hasil = terbilang($kepala) . ' hundred';
}
else if ($n < 1000000) {
$kepala = floor($n/1000);
$sisa = $n % 1000;
$hasil = terbilang($kepala) . ' thousand';
}
else if ($n < 1000000000) {
$kepala = floor($n/1000000);
$sisa = $n % 1000000;
$hasil = terbilang($kepala) . ' million';
}
else return false;
if ($sisa > 0) $hasil .= ' ' . terbilang($sisa);
return $hasil;
}
}

if(!function_exists('terbilang_english')){
	function terbilang_english($n)
	{
if ($n < 0) return 'minus ' . terbilang(-$n);
else if ($n < 10) {
switch ($n) {
case 0: return 'zero';
case 1: return 'one';
case 2: return 'two';
case 3: return 'three';
case 4: return 'four';
case 5: return 'five';
case 6: return 'six';
case 7: return 'seven';
case 8: return 'eight';
case 9: return 'nine';
}
}
else if ($n < 100) {
$kepala = floor($n/10);
$sisa = $n % 10;
if ($kepala == 1) {
if ($sisa == 0) return 'ten';
else if ($sisa == 1) return 'eleven';
else if ($sisa == 2) return 'twelve';
else if ($sisa == 3) return 'thirteen';
else if ($sisa == 5) return 'fifteen';
else if ($sisa == 8) return 'eighteen';
else return terbilang_english($sisa) . 'teen';
}
else if ($kepala == 2) $hasil = 'twenty';
else if ($kepala == 3) $hasil = 'thirty';
else if ($kepala == 5) $hasil = 'fifty';
else if ($kepala == 8) $hasil = 'eighty';
else $hasil = terbilang_english($kepala) . 'ty';
}
else if ($n < 1000) {
$kepala = floor($n/100);
$sisa = $n % 100;
$hasil = terbilang_english($kepala) . ' hundred';
}
else if ($n < 1000000) {
$kepala = floor($n/1000);
$sisa = $n % 1000;
$hasil = terbilang_english($kepala) . ' thousand';
}
else if ($n < 1000000000) {
$kepala = floor($n/1000000);
$sisa = $n % 1000000;
$hasil = terbilang_english($kepala) . ' million';
}
else if ($n < 1000000000000) {
$kepala = floor($n/1000000000);
$sisa = $n % 1000000000;
$hasil = terbilang_english($kepala) . ' billion';
}



 
else return false;
if ($sisa > 0) $hasil .= ' ' . terbilang_english($sisa);
return $hasil;
}
}