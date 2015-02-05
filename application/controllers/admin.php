<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 */

class Admin extends CI_Controller{
    
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $cek = $this->session->userdata('ip_address');
        $status = $this->session->userdata('status');
        if($this->session->userdata('status') == 'is_login'){
            
            redirect('c_login/dashboard',$data);
            
        }else{
            $this->db->where('usr_[ip_address]',$cek);
            $data = $this->db->get('tmp_usrlogin');
            if(!$data){
                if($this->session->userdata('ip_address')==$data['usr_[ip_address]']);
            }else{
                 redirect('c_login/cek_login');
                 exit();
            }
            
        }
    	
    }
    
   
}
?>
