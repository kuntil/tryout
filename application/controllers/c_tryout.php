<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class C_tryout extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $this->db->like('kd_soal','kdind');
        $this->db->group_by('kd_soal');
        $data['ind']=$this->db->get('try_kode');
        $this->db->or_like('kd_soal','kdmtk');
        $this->db->group_by('kd_soal');
        $data['mtk']=$this->db->get('try_kode');
        $this->db->or_like('kd_soal','kding');
        $this->db->group_by('kd_soal');
        $data['ing'] = $this->db->get('try_kode');
        
        $this->db->like('kd_soal','kdbio');
        $this->db->group_by('kd_soal');
        $data['bio']=$this->db->get('try_kode');
        $this->db->like('kd_soal','kdkim');
        $this->db->group_by('kd_soal');
        $data['kim']=$this->db->get('try_kode');
        $this->db->like('kd_soal','kdfis');
        $this->db->group_by('kd_soal');
        $data['fis'] = $this->db->get('try_kode');
        
        $this->db->like('kd_soal','kdeko');
        $this->db->group_by('kd_soal');
        $data['eko']=$this->db->get('try_kode');
        $this->db->like('kd_soal','kdsej');
        $this->db->group_by('kd_soal');
        $data['sej']=$this->db->get('try_kode');
        $this->db->like('kd_soal','kdgeo');
        $this->db->group_by('kd_soal');
        $data['geo'] = $this->db->get('try_kode');
        
        $this->db->select('kd_mtk');
        $data['act_mtk']=$this->db->get('try_paket');
        
        $this->db->select('kd_ind');
        $data['act_ind']=$this->db->get('try_paket');
        
        $this->db->select('kd_ing');
        $data['act_ing']=$this->db->get('try_paket');
        
        $this->db->select('kd_bio');
        $data['act_bio']=$this->db->get('try_paket');
        
        $this->db->select('kd_kim');
        $data['act_kim']=$this->db->get('try_paket');
        
        $this->db->select('kd_fis');
        $data['act_fis']=$this->db->get('try_paket');
        
        $this->db->select('kd_eko');
        $data['act_eko']=$this->db->get('try_paket');
        
        $this->db->select('kd_geo');
        $data['act_geo']=$this->db->get('try_paket');
        
        $this->db->select('kd_sej');
        $data['act_sej']=$this->db->get('try_paket');
        
        $this->db->select('tgl_dasar,tgl_ipa,tgl_ips,jam_dasar,jam_ipa,jam_ips');
        $data['dll']=$this->db->get('try_paket');
   
        $data['title']="management tryout";
        $this->load->view('admin/list_tryout',$data);
        
    }
    
    public function replace(){
        
        $this->load->model('m_paket');
        $this->m_paket->save();
        
        redirect('c_tryout');
        
    }
    
    public function dasar(){
        date_default_timezone_set("Asia/Jakarta");
        $serverTime =  date('Y-m-d');
        $serverHours = date('H:i:s');
        
        echo date('Y-m-d H:i:s');
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeDasar();
        
        $soalTime = date_create($timeDB['jam_dasar']);
        date_add($soalTime, date_interval_create_from_date_string('60 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
            
        if($timeDB['tgl_dasar']==$serverTime ){
            echo "Jam server :".$serverHours;
            echo "Jam db :".$timeDB['jam_dasar'];
            echo "Jam + waktu :".$batasTime;
        if($serverHours >= $timeDB['jam_dasar'] && $serverHours < $batasTime ){        
                redirect('c_pengerjaan/dasar');
            }
        }
        $this->session->set_flashdata('galat','Waktu pengerjaan belum dimulai, silahkan coba lagi nanti');
        redirect('home/tryout');
    }
    
    public function ipa(){
        date_default_timezone_set("Asia/Jakarta");
        $serverTime =  date('Y-m-d');
        $serverHours = date('H:i:s');
        //$soalTime = date_create($serverHours);
        //date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
        //$batasTime = date_format($soalTime,'H:i:s' );
        
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeIpa();
        
		//tambahan dari fadhel
		$soalTime = date_create($timeDB['jam_ipa']);
        date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
        //end tambahan fadhel
		
        if($timeDB['tgl_ipa']==$serverTime ){
            echo "Jam server :".$serverHours;
            echo "Jam db :".$timeDB['jam_dasar'];
            echo "Jam + waktu :".$batasTime;
        if($serverHours >= $timeDB['jam_ipa'] && $serverHours < $batasTime ){
                //"masuk sini ndak";
                redirect('c_pengerjaan/ipa');
            }
        }
        
        $this->session->set_flashdata('galat','Waktu pengerjaan belum dimulai, silahkan coba lagi nanti');
        redirect('home/tryout');
		//echo "<script type='text/javascript'>history.go(-1);</script>";
    }

    public function ips(){
        date_default_timezone_set("Asia/Jakarta");
        $serverTime =  date('Y-m-d');
        $serverHours = date('H:i:s');
       // $soalTime = date_create($serverHours);
       // date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
       // $batasTime = date_format($soalTime,'H:i:s' );
        
        $this->load->model('m_paket');
        $timeDB = $this->m_paket->timeIps();
		
		//tambahan dari fadhel
		$soalTime = date_create($timeDB['jam_ips']);
        date_add($soalTime, date_interval_create_from_date_string('90 minutes'));    
        $batasTime = date_format($soalTime,'H:i:s' );
        //end tambahan fadhel
        
        if($timeDB['tgl_ips']==$serverTime ){
            echo "Jam server :".$serverHours;
            echo "Jam db :".$timeDB['jam_dasar'];
            echo "Jam + waktu :".$batasTime;
        if($serverHours >= $timeDB['jam_ips'] && $serverHours < $batasTime ){
                "masuk sini ndak";
                redirect('c_pengerjaan/ips');
            }
        }
        
        $this->session->set_flashdata('galat','Waktu pengerjaan belum dimulai, silahkan coba lagi nanti');
        redirect('home/tryout');
    }
}
?>
