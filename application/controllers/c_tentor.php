<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class C_tentor extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
       $this->db->order_by('username');
       $data['hasil']=  $this->db->get('try_tentor');
       $data['title']='List Tentor';

       $this->load->view('admin/list_tentor',$data);
        
    }
    
    public function add(){
        
        if($this->input->post('simpan')){
            $this->load->model('m_tentor');
            $this->m_tentor->add();
            redirect('c_tentor');
            
        }
        $data['title']='Input Tentor';
        $this->load->view('admin/input_tentor',$data);
                
    }
    
    public function edit($id=null){
        if($this->input->post('simpan')){
            $this->load->model('m_tentor');
            $this->m_tentor->edit($id);
            redirect('c_tentor');
            
        }
        $this->db->where('id_tentor',$id);
        $data['hasil']=$this->db->get('try_tentor');
        $data['title']='Edit Tentor';
        $this->load->view('admin/edit_tentor',$data);
        
    }
   
    public function delete($id=null){
        
        $this->load->model('m_tentor');
        $this->m_tentor->delete($id);
        redirect('c_tentor');
        
    }
}

?>
