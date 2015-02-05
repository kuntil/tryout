<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_universitas extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        $data['title']='List Universitas';
        $data['query']= $this->db->get('try_universitas');
        $this->load->view('admin/list_universitas',$data);
    }
    
    public function add(){
        if($this->input->post('submit')){
            $this->load->model('m_universitas');
            $this->m_universitas->add();
            redirect('c_universitas');
        }
        $data['title']='input universitas';
        $this->load->view('admin/input_universitas',$data);
    }
    
    public function edit($id=null){
        
        if($this->input->post('submit')){
            $this->load->model('m_universitas');
            $this->m_universitas->edit($id);
            redirect('c_universitas');
        }
        $data['title']='edit universitas';
        $this->db->where('id_universitas',$id);
        $data['query']=$this->db->get('try_universitas');
        $this->load->view('admin/edit_universitas',$data);
    }
    
    public function delete($id=null){
        $this->load->model('m_universitas');
        $this->m_universitas->delete($id);
        redirect('c_universitas');
    }
}

