<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class C_pengerjaan extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function dasar(){
        
        $this->load->model('m_paket');
        $query = $this->m_paket->soalDasar();
        
        $kd_mtk = $query['kd_mtk'];
        $kd_ind = $query['kd_ind'];
        $kd_ing = $query['kd_ing'];
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_mtk);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_mtk'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_ing);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_ing'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_ind);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_ind'] = $this->db->get();
                
        date_default_timezone_set("Asia/Jakarta");
        $serverHours = date('H:i:s');
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeDasar();
        
        $soalTime = date_create($timeDB['jam_dasar']);
        date_add($soalTime, date_interval_create_from_date_string('60 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
        
        $data['sisaWaktu'] = round(strtotime($batasTime) - strtotime($serverHours));
//        echo $batasTime."<br>";
//        echo $serverHours."<br>";
//        echo $data['sisaWaktu'];
        $data['title']="Soal Dasar";
        $this->load->view('soal_dasar',$data);
    }
    
    public function ipa(){
        
        $this->load->model('m_paket');
        $query = $this->m_paket->soalIpa();
        
        $kd_bio = $query['kd_bio'];
        $kd_kim = $query['kd_kim'];
        $kd_fis = $query['kd_fis'];
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_bio);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_bio'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_kim);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_kim'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_fis);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_fis'] = $this->db->get();
        
        date_default_timezone_set("Asia/Jakarta");
        $serverHours = date('H:i:s');
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeIpa();
        
        $soalTime = date_create($timeDB['jam_ipa']);
        date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
        
        $data['sisaWaktu'] = round(strtotime($batasTime) - strtotime($serverHours));
//        echo $batasTime."<br>";
//        echo $serverHours."<br>";
//        echo $data['sisaWaktu'];
        
        $data['title']="Soal IPA";
        $this->load->view('soal_ipa',$data);
    }
    
    public function ips(){
        
        $this->load->model('m_paket');
        $query = $this->m_paket->soalIps();
        
        $kd_eko = $query['kd_eko'];
        $kd_geo = $query['kd_geo'];
        $kd_sej = $query['kd_sej'];
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_eko);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_eko'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_sej);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_sej'] = $this->db->get();
        
        $this->db->from('try_soal,try_kode');
        $this->db->where('try_kode.kd_soal',$kd_geo);
        $this->db->where('try_soal.id_soal = try_kode.id_soal');
        $data['soal_geo'] = $this->db->get();
                
        date_default_timezone_set("Asia/Jakarta");
        $serverHours = date('H:i:s');
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeIps();
        
        $soalTime = date_create($timeDB['jam_ips']);
        date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
        
        $data['sisaWaktu'] = round(strtotime($batasTime) - strtotime($serverHours));
//        echo $batasTime."<br>";
//        echo $serverHours."<br>";
//        echo $data['sisaWaktu'];
        
        $data['title']="Soal IPS";
        $this->load->view('soal_ips',$data);        
    }
    
    public function simpanDasar(){
        
        $this->load->model('m_pengerjaan');
        $this->m_pengerjaan->dasarCari();
        redirect('home/tryout');
    }
    
    public function simpanIpa(){
        
        $this->load->model('m_pengerjaan');
        $this->m_pengerjaan->ipaCari();
        redirect('home/tryout');
    }
    
    public function simpanIps(){
        
        $this->load->model('m_pengerjaan');
        $this->m_pengerjaan->ipsCari();
        redirect('home/tryout');
    }
}

