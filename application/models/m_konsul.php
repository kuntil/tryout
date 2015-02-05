<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_konsul extends CI_Model {
    
    public function index(){
        
    }
    
    public function add(){
        
        $tentor = $this->input->post('tentor');
        $jenis = $this->input->post('jenis');
        $tanggal = $this->input->post('tanggal');
        $jam = $this->input->post('jam');
        $id_mtk = $this->input->post('kd_mtk');
        
        switch ($id_mtk) {
            case "matematika": $kd_mtk = "kd_mtk";
                break;
            case "bahasa inggris" : $kd_mtk = "kd_ing";
                break;
            case "bahasa indonesia" : $kd_mtk = "kd_ind";
                break;
            case "biologi" : $kd_mtk = "kd_bio";
                break;
            case "kimia" : $kd_mtk = "kd_kim";
                break;
            case "fisika" : $kd_mtk = "kd_fis";
                break;
            case "sejarah" : $kd_mtk = "kd_sej";
                break;
            case "ekonomi" : $kd_mtk = "kd_eko";
                break;
            case "geografi" : $kd_mtk = "kd_geo";
                break;
        }
        
        $data = array (
            
            'id_tentor'=>$tentor,
            'jenis'=>$jenis,
            'tanggal'=>$tanggal,
            'jam'=>$jam,
            'id_mtk'=>$kd_mtk
        );
        
        $this->db->insert('try_jadwal',$data);
        
    }
    
    public function edit($id=null){
        
        $tentor = $this->input->post('tentor');
        $jenis = $this->input->post('jenis');
        $tanggal = $this->input->post('tanggal');
        $jam = $this->input->post('jam');
        $id_mtk = $this->input->post('kd_mtk');
//        echo $kd_mtk;
        switch ($id_mtk) {
            case "matematika": $kd_mtk = "kd_mtk";
                break;
            case "bahasa inggris" : $kd_mtk = "kd_ing";
                break;
            case "bahasa indonesia" : $kd_mtk = "kd_ind";
                break;
            case "biologi" : $kd_mtk = "kd_bio";
                break;
            case "kimia" : $kd_mtk = "kd_kim";
                break;
            case "fisika" : $kd_mtk = "kd_fis";
                break;
            case "sejarah" : $kd_mtk = "kd_sej";
                break;
            case "ekonomi" : $kd_mtk = "kd_eko";
                break;
            case "geografi" : $kd_mtk = "kd_geo";
                break;
        }
        
        $data = array (
            
            'id_tentor'=>$tentor,
            'jenis'=>$jenis,
            'tanggal'=>$tanggal,
            'jam'=>$jam,
            'id_mtk'=>$kd_mtk
        );
        
        $this->db->where('id_jadwal',$id);
        $this->db->update('try_jadwal',$data);
    }
    
    public function del($id=null){
        
        $this->db->where('id_jadwal',$id);
        $this->db->delete('try_jadwal');
        
    }
}
