<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messages extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// $this->output->enable_profiler();
		$this->load->Model('User');
		$this->load->Model('mahana_model');
		$this->load->library('mahana_messaging');
		// $this->session->sess_destroy();
	}

	public function index()
	{
		// Check if logged in
		if(!$this->session->userdata('logged_in'))
		{
			redirect('/users/login');
		}
		else
		{
			// Generate messages
			// for($j = 0; $j < 5; $j++){
			// $sub = "Subject: ".$j;
			// $body = "This is message number ".$j;
			// 	$this->mahana_model->send_new_message(2, 1, $sub, $body, 1);
			// }
			redirect('/messages/home');
		}
	}

	public function home()
	{
		// Check if logged in
		if(!$this->session->userdata('logged_in'))
		{
			redirect('/logins');
		}
		else
		{
			$this->load->view('messages_home');
		}
	}

	public function load_message()
	{
		// Check if logged in
		if(!$this->session->userdata('logged_in'))
		{
			redirect('/logins');
		}
		else
		{
			$user_id = $this->session->userdata('user_id');
			// $msg_array = $this->mahana_model->get_full_thread(1, $user_id, TRUE);
			// $msg = $this->mahana_model->get_message(1, $user_id);
			
			$msg_array = $this->mahana_model->get_all_threads($user_id, true);
			// $msg_array = $this->mahana_model->get_full_thread(21, 1);
			// var_dump($msg_array);
			$this->session->set_userdata('msg_array', $msg_array);

			$this->load->view('messages');
		}
	}

	public function new_message()
	{
		// Check if logged in
		if(!$this->session->userdata('logged_in'))
		{
			redirect('/logins');
		}
		else
		{
			$this->load->view('new_message');
		}
	}

	public function send_message()
	{
		$msg_array = $this->input->post();
		$user_id = $this->session->userdata('user_id');

		// This returns thread_id, will need to use this most likely
		$this->mahana_model->send_new_message($user_id, 2, $msg_array['subject'], $msg_array['message'], $msg_array['priority']);

		redirect('/messages/load_view');
	}
}