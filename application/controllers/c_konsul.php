<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_konsul extends CI_Controller {
    
    public function index(){
        
       $data['title']='List Konsul';
       $data['query']=$this->db->query("SELECT * FROM try_tentor,try_jadwal WHERE try_jadwal.id_tentor = try_tentor.id_tentor");
       $this->load->view('admin/list_konsul',$data);
        
    }
    
    public function add(){
        if($this->input->post('simpan')){
            $this->load->model('m_konsul');
            $this->m_konsul->add();
            redirect('c_konsul');
        }
        
        $data['title']='Add Konsul';
        $data['tentor']=$this->db->get('try_tentor');
        $this->load->view('admin/input_konsul',$data);
        
    }
    
    public function edit($id=null){
        
        if($this->input->post('simpan')){
            $this->load->model('m_konsul');
            $this->m_konsul->edit($id);
            redirect('c_konsul');
        }
        
        $data['title']='Add Konsul';
        $data['default']= $this->db->query("SELECT * FROM try_tentor,try_jadwal WHERE try_jadwal.id_tentor = try_tentor.id_tentor AND try_jadwal.id_jadwal = $id");
          
        $data['tentor']=$this->db->get('try_tentor');
        $this->load->view('admin/edit_konsul',$data);
        
    }
    
    public function delete($id = null){
        $this->load->model('m_konsul');
        $this->m_konsul->del($id);
        redirect('c_konsul');
    }
    
}

