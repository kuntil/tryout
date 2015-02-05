<?php 
//if(!define('BASEPATH')) exit('No direct script allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class C_login extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
        
        $this->load->model('m_login');
        $this->load->library('form_validation');
        
    }
    
    //login admin
    public function cek_login(){
        
        $this->form_validation->set_rules('username', 'username', 'required|xss_clean');
        $this->form_validation->set_rules('password', 'password', 'required|xss_clean');

        $this->form_validation->set_error_delimiters('', '<br/>');
        
        if ($this->form_validation->run() == TRUE) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $akses = $this->input->post('akses');
            
            echo $akses;
            if($akses =="admin"){
                $login_data = $this->m_login->cek_admin_login($username, $password);
            }else{
                $login_data = $this->m_login->cek_tentor_login($username, $password);
            }
            if($login_data){
                if($akses=="admin"){
                    $usr_id = $login_data['id_admin'];
                }else{
                    $usr_id = $login_data['id_tentor'];
                }
            $session_data= array(
                'usr_id' => $usr_id,
                'username' => $login_data['username'],
                'status' => 'is_login',
                'is_login'=> TRUE,
            );         
            $this->session->set_userdata($session_data);
            
            $tmp_usrlogin= array(
                'usr_name' => $login_data['username'],
                'usr_lastlogin'=>  date('Y-m-d H:i:s'),
                'usr_[session]'=>$this->session->userdata('session_id'),
                'usr_[ip_address]'=>$this->session->userdata('ip_address'),
                'usr_[status]' => 'is_login',
            );
            $this->db->insert('tmp_usrlogin',$tmp_usrlogin);
            redirect('admin');
            }else{
		$this->session->set_flashdata('message','Login Gagal, Kombinasi username dan password salah.');
		redirect('c_login/cek_login');
            }
        }
         $data['title']="halaman login";
        $this->load->view('admin/login',$data);
    }
      
    public function dashboard() {
        $data['title']="Admin";
        $data['jenis']="Home";
        $data['soal']= $this->db->count_all_results('try_soal');
        $data['kdsoal']= $this->db->count_all_results('try_kode');
        $data['paket']=$this->db->count_all_results('try_paket');
        $data['user']=$this->db->count_all_results('try_user');
        $this->check_logged_in();
        $this->load->view('admin/index',$data);
    }

    function logout() {
       $data= array
            (
            'id'=>0,
            'username' =>0,
            'status'=>'not_login',
            'sekolah'=>0,
            'is_login' => FALSE,
        );
       //start hapus database
       $where = $this->session->userdata('ip_address');
       $this->db->where('usr_[ip_address]',$where);
       $this->db->delete('tmp_usrlogin');
       //end hapus database
       $this->session->sess_destroy(); 
       $this->session->unset_userdata($data);
       redirect('home');
    }

    public function check_logged_in() {
        if ($this->session->userdata('is_login') != TRUE) {
            redirect('c_login/cek_login', 'refresh');
            exit();
        }
    }

    public function is_logged_in() {
        if ($this->session->userdata('logged_in') == TRUE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    //login user
    
    public function loginusr(){
        
        if($this->input->post('submit')){
        
        $this->form_validation->set_rules('username', 'username', 'required|xss_clean');
        $this->form_validation->set_rules('password', 'password', 'required|xss_clean');

        $this->form_validation->set_error_delimiters('', '<br/>');
        if ($this->form_validation->run() == TRUE) {
            
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            
            echo $username;
            echo $password;
            
            $login_data = $this->m_login->cek_user_login($username,$password);
            if($login_data){
                $session_data = array (
                    'id'=> $login_data['id_user'],
                    'username'=> $login_data['username'],
                    'sekolah'=> $login_data['sekolah'],
                    'status'=> 'login',
                );
                $this->session->set_userdata($session_data);
                
                $tmp_usrlogin= array(
                'usr_id'=>$login_data['id_user'],
                'usr_name' => $login_data['username'],
                'usr_lastlogin'=>  date('Y-m-d H:i:s'),
                'usr_[session]'=>$this->session->userdata('session_id'),
                'usr_[ip_address]'=>$this->session->userdata('ip_address'),
                'usr_[status]' => 'is_login',
            );
            $this->db->insert('tmp_usrlogin',$tmp_usrlogin);
                redirect('home');
            }else {
                redirect('home');
            }
        }
    }
    redirect('home');
    }
    
    public function registrasi(){
        
        if($this->input->post('submit')){
            $this->load->model('m_user');
            $this->m_user->add();
        }
        $data['title']="registrasi";
        $this->load->view('index',$data);
    }
}
?>