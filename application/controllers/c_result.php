<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_result extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
     
        $data['title']="List Hasil";
        $this->db->where('try_nilai.id_user = try_user.id_user');
        $data['query']= $this->db->get('try_nilai,try_user');
        $this->load->view('admin/list_result',$data);
    }
    
    public function detail($id=null){
        
    }
    
}

