<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	/**
     * Login Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

	public function __construct()
    {
        parent::__construct();

    }
    	
	public function login()
	{
		$data['title'] = 'Login';
		$data['subview'] = 'login/main';
		$this->load->view('components/layout', $data);
	}

	public function forgot_password()
	{
		$data['title'] = 'Login';
		$data['subview'] = 'login/forgot_password';
		$this->load->view('components/layout', $data);
	}

	/**
     * Validate and Login User
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

	public function login_attempt()
	{
		$rules = [
			[
				'field' => 'username',
				'label' => 'Email',
				'rules' => 'required'
			],
			[
				'field' => 'password',
				'label' => 'Password',
				'rules' => 'required'
			]
		];

		$this->form_validation->set_rules($rules);
		if ($this->form_validation->run()) {
			$this->load->model('user_m');
			$attempt = $this->user_m->attempt($this->input->post());
			if ($attempt === null) {
				header("Content-type:application/json");
				echo json_encode(['password' => 'Wrong email or password']);
			} else {



				$this->session->set_userdata('active_user', $attempt);


				 $this->load->model('language_m');
                 $this->language_m->set($this->input->post('language_id'));


				header("Content-type:application/json");
				echo json_encode(['status' => 'success']);
			}
		} else {
			header("Content-type:application/json");
			echo json_encode($this->form_validation->get_all_errors());
		}
	}

	public function forgot_attempt()
	{
		$rules = [
			[
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'required'
			]
		];

		$this->form_validation->set_rules($rules);
		if ($this->form_validation->run()) {
			$this->load->model('user_m');
			$forgot = $this->user_m->forgot($this->input->post());
			if ($forgot === null) {
				header("Content-type:application/json");
				echo json_encode(['email' => 'Wrong email address']);
			} else {

				$data['password']   		= rand(100000, 999999);
				$this->db->where('email', $this->input->post('email'));
				$this->db->update('users', $data); 
				$this->sendforgotemail($this->input->post('email'), $data['password']);
			}
		} else {
			header("Content-type:application/json");
			echo json_encode($this->form_validation->get_all_errors());
		}
	}

	/**
     * Logout User
     *
     * @access 	public
     * @param 	
     * @return 	redirect
     */

	public function logout() {
		$this->session->unset_userdata('active_user');
		redirect('auth/login');
	}


	public function sendforgotemail($email='', $new_password=''){

        //emaillllll bukkakaaa
        // Set SMTP Configuration
        $this->load->config('email');
        $this->load->library('email');
        // Set your email information
        $from           = $this->config->item('smtp_user');
        $to             = $email;
        $subject        = 'Reset your password';

        $sql = $this->db->query("SELECT email, name FROM users WHERE email = '$email'")->row();
        $this->data['email'] 	= $sql->email;
        $this->data['password'] = $new_password;
        $this->data['name']     = $sql->name;
        $this->data['date']     = date('d-m-Y');
        $this->data['hours']    = date('H:i:s');

        $message                =  $this->load->view('login/forgot_email.php',$this->data,TRUE);
        // Sometimes you have to set the new line character for better result
        $this->email->set_newline("\r\n");
        // Set email preferences
        $this->email->from($from, 'Notaris - Management Information System');
        $this->email->to($to);
        $this->email->subject($subject);
        //$this->email->attach('http://localhost/email/pdf/testing.pdf');
        $this->email->message($message);
        // Ready to send email and check whether the email was successfully sent
        if (!$this->email->send()) {
            // Raise error message
            show_error($this->email->print_debugger());
            header("Content-type:application/json");
            echo json_encode(['status' => 'errors']);
        } else {
            // Show success notification or other things here
            header("Content-type:application/json");
            echo json_encode(['status' => 'success']);
        }
    }
}
