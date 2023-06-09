<?php

defined('BASEPATH') || exit('No direct script access allowed');

class Forgot extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('model_user');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$this->form_validation->set_rules(
			'email',
			'Email',
			'required',
			['required' => 'email harus di isi']
		);

		if ($this->form_validation->run() === false) {
			$this->load->view('user/form_forgot_password');
		} else {
			$email = $this->input->post('email');
			$this->forgot_password($email);
		}
	}

	public function forgot_password($email)
	{
		$cek = $this->model_forgot->cek_data_email($email);
		if ($cek) {
			$this->generate_token($email);
		} else {
			$this->session->set_flashdata('error_email', 'email belum terdaftar');
			redirect('forgot');
		}
	}
}
