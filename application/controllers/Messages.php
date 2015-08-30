<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messages extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->session->set_userdata('logged_in', TRUE);
		$this->output->enable_profiler();
		$this->load->Model('user');
		$this->load->Model('mahana_model');
		$this->load->library('mahana_messaging');
		$this->session->set_userdata('user_id', 2);
		$user = $this->user->find(2);
		$this->session->set_userdata('first_name', $user['first_name']);
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
			redirect('/messages/home');
		}
	}

	public function home()
	{
		// Check if logged in
		if(!$this->session->userdata('logged_in'))
		{
			redirect('/users');
		}
		else
		{
			$most_recent = $this->mahana_model->get_most_recent_threads($this->session->userdata('user_id'));
			$this->load->view('messages/home');
		}
	}

  /**
   * Load conversation view
   *
   * @param   integer  $thread_id
   */
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
			$this->session->set_userdata('msg_array', $msg_array);

			$this->load->view('messages/conversation');
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
			$this->session->set_userdata('user_names', $this->user->get_all_users_names());
			$this->session->set_userdata('teams_names', $this->user->get_all_teams_names());

			$this->load->view('messages/new');
		}
	}

	public function post_message()
	{
		$msg_array = $this->input->post();
		$user_id = $this->session->userdata('user_id');

		// This returns thread_id, will need to use this most likely
		$this->mahana_model->send_new_message($user_id, $msg_array['user_id'], $msg_array['subject'], $msg_array['message'], $msg_array['priority']);

		// Append thread_id from above to load message after sending it
		redirect('/messages/load_message');
	}

	public function reply_message()
	{
		$msg_array = $this->input->post();
		$user_id = $this->session->userdata('user_id');
		// var_dump($msg_array);
		// var_dump($user_id);
		
		// die();

		// This returns thread_id, will need to use this most likely
		$this->mahana_model->send_new_message($user_id, $msg_array['user_id'], $msg_array['subject'], $msg_array['message'], $msg_array['priority']);

		redirect('/messages/load_message');
	}
}