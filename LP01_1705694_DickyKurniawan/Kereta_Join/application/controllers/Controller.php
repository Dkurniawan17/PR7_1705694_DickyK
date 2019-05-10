<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Controller extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('data');
	}
	public function index()
	{
		$data['lokomotif'] = $this->Data->inner_join()->result();
		$this->load->view('Home/Header');
		$this->load->view('Home/Index', $data);
		$this->load->view('Home/Footer');
	}

	public function Left()
	{
		$data['lokomotif'] = $this->Data->left_join();
		$this->load->view('Home/Header');
		$this->load->view('Home/Left', $data);
		$this->load->view('Home/Footer');
	}

	public function Right()
	{
		$data['gerbong'] = $this->Data->right_join();
		$this->load->view('Home/Header');
		$this->load->view('Home/Right', $data);
		$this->load->view('Home/Footer');
	}
}
