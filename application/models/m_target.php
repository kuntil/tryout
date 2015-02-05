<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_target extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function add(){
        
       $max = count($this->input->post('ceklist')); 
       $obj = $this->input->post('ceklist');
  
       for($i=0;$i<$max;$i++){
           $obj[$i];
           $data = array(
            'id_usr' => $this->session->userdata('id'),
            'id_universitas'=>$obj[$i],
           );
           $this->db->insert('try_target',$data);
       }
    }
    
    public function delete($id_user=null,$id_univ=null){
        
        $this->db->where('id_usr',$id_user);
        $this->db->where('id_universitas',$id_univ);
        $this->db->delete('try_target');
    }
}