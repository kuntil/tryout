<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Home extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $data['title']='Halaman Utama';
        $this->load->view('index',$data);
    }
    
    public function registrasi(){
        $data['title']="Halaman Registrasi";
        $this->load->view('index',$data);
        
    }
    
    public function login(){
        $data['title']="Halaman Login";
        $this->load->view('index',$data);
    }
    
    public function petunjuk(){
        $data['title']="Halaman Petunjuk";
        $this->load->view('index',$data);
    }
    
    public function informasi(){
        $data['title']="Halaman Informasi";
        $this->load->view('index',$data);
    }
    
    public function jadwal(){
        $data['title']="Halaman Jadwal";
        $data['jadwal']=$this->db->get('try_paket');
        $this->load->view('index',$data);
    }
    
    public function kontak(){
        $data['title']="Halaman Kontak";
        $this->load->view('index',$data);
    }
    
    public function jilc(){
        $data['title']="Halaman Profil";
        $this->load->view('index',$data);
    }
    
    public function bimbel(){
        $data['title']="Halaman Bimbel";
        $this->load->view('index',$data);
    }
    
    public function pembelajaran(){
        $data['title']="Halaman Pembelajaran";
        $this->load->view('index',$data);
    }

    public function agenda(){
    	$data['active']="class='active'";
    	$this->load->view('agenda',$data);
    }
    
    public function profile(){
        
        $data['title']='Halaman Utama';
        $id = $this->session->userdata('id');
        $this->db->where('id_user',$id);
        $data['login_data']=$this->db->get('try_user');
        $this->load->view('index',$data);    
    }
    
    public function target(){
        
        $id = $this->session->userdata('id_user');
        $data['title']='Halaman Utama';
        $this->db->where('id_usr',$id);
        $this->db->where('try_target.id_universitas =try_universitas.id_universitas');
        $this->db->from('try_target,try_universitas');
        $data['asem']=$this->db->get();
        
        $this->db->where('try_tambahan.id_user',$id);
        $this->db->where('try_jadwal.id_mtk = try_tambahan.id_mtk');
        $this->db->from('try_jadwal,try_tambahan');
        $data['jadwal_user']=$this->db->get();
        
        $data['list_universitas'] = $this->db->get('try_universitas');
        $this->load->view('index',$data);
        
    }
    
    public function tryout(){
        $data['title']='Halaman Utama';
        $data['waktu']=$this->db->get('try_paket');
        
        $this->db->where('id_user',$this->session->userdata('id'));
        $data['nilai']=$this->db->get('try_nilai');
        
        $this->db->from('try_target,try_universitas');
        $this->db->where('try_target.id_universitas = try_universitas.id_universitas');
        $this->db->where('try_target.id_usr',$this->session->userdata('id'));
        $this->db->limit(3);
        $this->db->order_by('point','DESC');
        $data['target']=$this->db->get();
                
        $this->load->model('m_pengerjaan');
        $cek = $this->m_pengerjaan->cek_dasar($this->session->userdata('id'));
        
//        echo $cek;
        if($cek == 'sudah'){
            $data['cetak_dasar']='cetak';
        }else{
            $data['cetak_dasar']='kerjakan';
        }
        
        $this->load->model('m_pengerjaan');
        $cek = $this->m_pengerjaan->cek_ipa($this->session->userdata('id'));
        
        if($cek == 'sudah'){
            $data['cetak_ipa']='cetak';
        }else{
            $data['cetak_ipa']='kerjakan';
        }
        
        $this->load->model('m_pengerjaan');
        $cek = $this->m_pengerjaan->cek_ips($this->session->userdata('id'));
        
        if($cek == 'sudah'){
            $data['cetak_ips']='cetak';
        }else{
            $data['cetak_ips']='kerjakan';
        }
        
        $this->load->view('index',$data);
        
    }
    
    public function tambahan(){
        
        $data['title']="Halaman Tambahan";
      
        $this->db->from('try_jadwal,try_tentor,try_roster');
        $this->db->where('try_jadwal.id_jadwal = try_roster.id_jadwal');
        $this->db->where('try_jadwal.id_tentor = try_tentor.id_tentor');
        $this->db->where('try_jadwal.tanggal >=', date('Y-m-d H:i:s'));
        $this->db->where('try_roster.id_user',$this->session->userdata('id'));
        
        $data['tambahan']=$this->db->get();
//        print_r($data);
        $this->load->view('index',$data);
    }
    
    public function roster(){
        
        if($this->input->post('simpan')){
            
            $this->load->model('m_jadwal');
            $this->m_jadwal->add();
            redirect('home/roster');
        }
        $data['title']='Membuat Jadwal Tambahan';
        $this->db->from('try_jadwal,try_tambahan,try_tentor');
        $this->db->where('try_jadwal.id_mtk = try_tambahan.id_mtk');
        $this->db->where('try_jadwal.id_tentor = try_tentor.id_tentor');
        $this->db->where('try_jadwal.kursi < 40 ');
        $this->db->where('try_jadwal.tanggal >=', date('Y-m-d H:i:s'));
        $this->db->where('try_tambahan.id_user',$this->session->userdata('id'));
        $this->db->group_by('id_jadwal');
        $data['tambahan']=$this->db->get();
        $this->load->view('index',$data);
    }
    
    public function compare(){
        $id = $this->session->userdata('id');
        $this->db->where('id_user',$id);
        $this->db->order_by('tgl','DESC');
        $this->db->limit(1);
        $data['compare']=$this->db->get('try_nilai'); 
        
        $this->db->from('try_target,try_universitas');
        $this->db->where('try_target.id_universitas = try_universitas.id_universitas');
        $this->db->where('try_target.id_usr',$this->session->userdata('id'));
        $this->db->limit(3);
        $this->db->order_by('point','DESC');
        $data['target']=$this->db->get();
		
		//$this->db->from('try_universitas');
        //$this->db->where('try_target.id_universitas = try_universitas.id_universitas');
        //$this->db->where('try_target.id_usr',$this->session->userdata('id'));
        //$this->db->order_by('point','DESC');
        $data['alt']=$this->db->query("SELECT * 
						FROM try_universitas
						WHERE id_universitas NOT IN (
							SELECT id_universitas
							FROM try_target
							WHERE id_usr =  '$id'
						) ORDER BY point DESC");
               
        $data['title']='Last Tryout';
        $this->load->view('index',$data);
    }
        
}
?>
