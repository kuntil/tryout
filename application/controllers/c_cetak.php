<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_cetak extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function dasar(){
        
        $data['title']="jawaban dasar";
        $paket = $this->db->get('try_paket');
        $hasil = $paket->row_array();
                
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_mtk']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_mtk'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_ind']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_ind'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_ing']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_ing'] = $this->db->get();
        
        $this->load->view('cetak_dasar',$data);
    }
    
    public function ipa(){
        
        $data['title']="jawaban ipa";
        $paket = $this->db->get('try_paket');
        $hasil = $paket->row_array();
                
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_bio']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_bio'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_kim']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_kim'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_fis']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_fis'] = $this->db->get();
        
        $this->load->view('cetak_ipa',$data);
        
    }
    
    public function ips(){
        
        $data['title']="jawaban ips";
        $paket = $this->db->get('try_paket');
        $hasil = $paket->row_array();
                
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_eko']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_eko'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_geo']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_geo'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$hasil['kd_sej']);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_sej'] = $this->db->get();
        
        $this->load->view('cetak_ips',$data);
        
    }
}