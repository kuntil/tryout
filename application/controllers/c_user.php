<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class C_user extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
    }

    public function index(){

       $this->db->order_by('username');
       $data['hasil']=  $this->db->get('try_user');
       $data['title']='List User';

       $this->load->view('admin/list_user',$data);
    }

    public function register(){
        
        $this->load->model('m_user');
        $this->m_user->add();
        redirect('home');     

    }
    
    public function edit_profile($id=null){
        
        $this->load->model('m_user');
        $this->m_user->edit($id);
        
        redirect('home/profile');
        
    }

    public function delete($id){
       $this->db->where('id_user',$id);
       $this->db->delete('try_user');
       redirect('c_user');
    }
    
    public function select($id){

        $this->db->where('id_user',$id);
        $data['hasil']=$this->db->get('try_user');
        $this->load->view('admin/det_user',$data);
    }   
    
    public function universitas($id){
       
        $this->db->where('id_user',$id);
        $this->db->order_by('tgl','DESC');
        $this->db->limit(1);
        $data['compare']=$this->db->get('try_nilai'); 
        
        $this->db->from('try_target,try_universitas');
        $this->db->where('try_target.id_universitas = try_universitas.id_universitas');
        $this->db->where('try_target.id_usr',$id);
        $this->db->limit(3);
        $this->db->order_by('point','DESC');
        $data['target']=$this->db->get();
        
        $this->load->model("m_user");
        $nilai = $this->m_user->nilai($id);
        
        $data['title']='Last Tryout';        
        $this->load->view('admin/user_univ',$data);   
    }
    
}
?>
