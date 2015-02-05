<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class M_print extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function paket_soal($id=null){
    
        $this->db->from('try_kode,try_soal');
        $this->db->where('try_kode.id_soal = try_soal.id_soal');
        $this->db->where('try_kode.kd_soal',$id);
        $query = $this->db->get();
        
        foreach ($query->row_array() as $row ):
            
        endforeach;
    }
    
    
}
