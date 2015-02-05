<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_target extends CI_Controller {
    
    
    public function __construct() {
        parent::__construct();
    }
    
    public function add($id=null){
        if($this->input->post('submit')){
            $this->load->model('m_target');
            $this->m_target->add($id);
            echo '<script language="javascript">';
            echo 'alert("Data Berhasil Di input")';
            echo '</script>';
            echo "<script>window.close();</script>";
        }
        $data['title']="Halaman Target";
        $this->db->order_by('point','DESC');
        $data['universitas']=$this->db->get('try_universitas');
        $this->load->view('target',$data);
    }
    
    public function delete($id_user=null,$id_target=null){
        
        $this->load->model('m_target');
        $this->m_target->delete($id_user,$id_target);
        redirect('home/tryout');
        
    }
}
