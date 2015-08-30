<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Teams extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// $this->output->enable_profiler();
		$this->load->model('User');
		$this->load->model('Team');
		$this->load->model('Event');
		$this->load->library('session');
	}

	public function index()
	{
		$teams = $this->Team->all();
		$newest_teams = $this->Team->();
		$this->load->view('teams', array("teams" =>$teams));
	}

	public function create()
	{
		$this->load->view('new_team');
	}

	public function add()
	{
		$this->Team->create($this->input->post());
		redirect('teams');
	}


}