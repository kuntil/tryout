<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class C_soal extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
       $this->load->library('pagination');
       
       $data['hasil']=  $this->db->get('try_soal');
       $data['title']='List Soal';
       
       $this->load->view('admin/list_soal',$data);
        
    }
    
    public function add_soal(){
        if($this->input->post('submit')){
           $this->load->model('m_soal');
           $this->m_soal->tambah();
           
           redirect('c_soal/index/');
       }
        $id = $this->db->count_all_results('try_soal');
        $nilai = str_split($id);
        
        $data['title']="Tambah Soal";
        $this->load->view('admin/input_soal',$data);
        
    }
    
    public function edit($id=null){
        if($this->input->post('submit')){
            $this->load->model('m_soal');
            $this->m_soal->edit();
            redirect('c_soal');
        }else{
            $this->load->model('m_soal');
            $data['hasil']=$this->m_soal->select($id);
            $data['title']='Edit Soal';
            $this->load->view('admin/edit_soal',$data);
        }
    }
    
    public function delete($id = null){
        $this->db->where('id_soal',$id);
        $this->db->delete('try_soal');
        redirect('c_soal');
    }
    
    public function select($id = null){
        return $this->db->get_where('try_soal', array('id_soal' => $id))->row();
    }
}
?>
