<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class M_paket extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function save(){
        
        $act_mtk = $this->input->post('act_mtk');
        $act_ind = $this->input->post('act_ind');
        $act_ing = $this->input->post('act_ing');
        $act_bio = $this->input->post('act_bio');
        $act_fis = $this->input->post('act_fis');
        $act_kim = $this->input->post('act_kim');
        $act_geo = $this->input->post('act_geo');
        $act_sej = $this->input->post('act_sej');
        $act_eko = $this->input->post('act_eko');
        
        //waktu
        $tgl_dasar = $this->input->post('tgl_dasar');
        $jam_dasar = $this->input->post('jam_dasar');
        $tgl_ipa = $this->input->post('tgl_ipa');
        $jam_ipa = $this->input->post('jam_ipa');
        $tgl_ips = $this->input->post('tgl_ips');
        $jam_ips = $this->input->post('jam_ips');
        
        $data = array(          
            'kd_mtk' => $act_mtk,
            'kd_ind' => $act_ind,
            'kd_ing' => $act_ing,
            'kd_bio' => $act_bio,
            'kd_fis' => $act_fis,
            'kd_kim' => $act_kim,
            'kd_eko' => $act_eko,
            'kd_geo' => $act_geo,
            'kd_sej' => $act_sej,
            'tgl_dasar'=>$tgl_dasar,
            'jam_dasar'=>$jam_dasar,
            'tgl_ipa'=>$tgl_ipa,
            'jam_ipa'=>$jam_ipa,
            'tgl_ips'=>$tgl_ips,
            'jam_ips'=>$jam_ips,
        );
        
        $this->db->where('kd_paket','0');
        $this->db->update('try_paket',$data);
    }
    
    public function timeDasar(){
        
        $this->db->select('kd_mtk,kd_ind,kd_ing,tgl_dasar,jam_dasar');
        $query = $this->db->get('try_paket', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    
    public function timeIpa(){
        
        $this->db->select('kd_fis,kd_kim,kd_bio,tgl_ipa,jam_ipa');
        $query = $this->db->get('try_paket', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    
    public function timeIps(){
        
        $this->db->select('kd_geo,kd_sej,kd_eko,tgl_ips,jam_ips');
        $query = $this->db->get('try_paket', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    
    public function soalDasar(){
        
        $this->db->select('kd_mtk, kd_ind, kd_ing');
        $query = $this->db->get('try_paket');
        
        if($query->num_rows()== 1){
            return $query->row_array();
        }
        
    }
    
    public function soalIpa(){
        
        $this->db->select('kd_bio, kd_kim, kd_fis');
        $query = $this->db->get('try_paket');
        
        if($query->num_rows()== 1){
            return $query->row_array();
        }
    }
    
    public function soalIps(){
        
        $this->db->select('kd_eko, kd_geo, kd_sej');
        $query = $this->db->get('try_paket');
        
        if($query->num_rows()== 1){
            return $query->row_array();
        }
    }
    
}
?>
