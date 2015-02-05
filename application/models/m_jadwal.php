<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_jadwal extends CI_Model {
    
    
    public function __construct() {
        parent::__construct();
    }
    
    public function add(){
        
        $max = count($this->input->post('ceklist'));
        $obj = $this->input->post('ceklist');
        $user = $this->session->userdata('id');
       
        print_r($obj);
        for($i=0;$i<$max;$i++){
           $obj[$i];
           $this->db->where('id_jadwal',$obj[$i]);
           $this->db->where('kursi < 40 ');
           $query = $this->db->get('try_jadwal', 1);
           
           if($query->num_rows()==1){
            $data = array(
                'id_user' => $user,
                'id_jadwal'=>$obj[$i],
            );
            $this->db->insert('try_roster',$data);
           }
           
        }
        
    }
}

