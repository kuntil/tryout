<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_useronline extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
    
        $data['title']='List User Login';
        $sql = "SELECT `usr_name` usrname, `usr_lastlogin`  usrlogin, `usr_[ip_address]` usrip, `usr_[session]` usrsession, `usr_[status]` usrstatus FROM `tmp_usrlogin`";
        $data['usr_login'] = $this->db->query($sql);
        $this->load->view('admin/usr_list',$data);
        
    }
    
}
