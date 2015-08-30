<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// $this->output->enable_profiler();
		$this->load->model('User');
		// REMOVE THIS BEFORE DEPLOYING LIVE
		$this->session->set_userdata('logged_in', TRUE);
	}

	public function index()
	{
		$this->load->view('index');
	}
	public function events()
	{
		$this->load->view('events');
	}
	public function event()
	{
		$this->load->view('event');
	}
	public function teams()
	{
		$this->load->view('teams');
	}
	public function login()
	{
		$this->load->view('login');
	}
	public function signin()
	{
		$login = $this->User->login($this->input->post());
		if ($login)
		{
			$user = $this->User->get_user_by_email($this->input->post('email'));
			// $this->session->set_userdata('user', $user);
			redirect('/dashboard');
		}
		else
		{
			redirect('/');
		}
	}
	public function logoff()
	{
		$this->session->sess_destroy();
		redirect('/');
	}
	public function signup()
	{
		$this->load->view('signup');
	}
	public function request()
	{
		$this->User->create($this->input->post());
		$this->load->view('thank_you');
	}
	public function approve($id)
	{
		$this->User->approve($id);
		redirect('/users/admin');
	}
	public function profile($id)
	{
		$user = $this->User->find($id);
		$this->load->view('profile', array("user"=> $user));
	}
	public function admin()
	{
		$requests = $this->User->pending_requests();

		$this->load->view('admin_dashboard', array("requests"=> $requests));
	}
	public function dashboard()
	{
		$this->load->view('team_dashboard');
	}
	public function leader_dashboard()
	{
		$this->load->view('leader_dashboard');
	}
	public function about()
	{
		$this->load->view('index');
	}
}

//end of main controller