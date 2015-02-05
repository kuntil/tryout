<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


class M_pengerjaan extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function dasarCari(){
        $kosong_mtk=0;
        $kosong_ind=0;
        $kosong_ing=0;
        
        $benar_mtk=0;
        $benar_ind=0;
        $benar_ing=0;
                
        $salah_mtk=0;
        $salah_ind=0;
        $salah_ing=0;
                
        $id_user = $this->session->userdata('id');
        $max = count($this->input->post('jawab'));
        $obj_jwb = $this->input->post('jawab');
        $obj_soal = $this->input->post('soal');
        
               
        for($i = 1 ; $i<=$max ; $i++){
            $sql = "SELECT * FROM try_soal WHERE id_soal = '$obj_soal[$i]' AND jwb_soal = '$obj_jwb[$i]'";
            $query = $this->db->query($sql);
//            echo $sql."<br>";
           
            if($query->num_rows == 1 ){
                if(preg_match("/^mtk_/", $obj_soal[$i])){
                    $benar_mtk = $benar_mtk+1;
                }
                if (preg_match("/ind_/", $obj_soal[$i])){
                    $benar_ind = $benar_ind+1;
                }
                if(preg_match("/^ing_/", $obj_soal[$i])){
                    $benar_ing = $benar_ing+1;
                }
            }else{
                if($obj_jwb[$i]==""){
                    if(preg_match("/^mtk_/", $obj_soal[$i])){
                        $kosong_mtk = $kosong_mtk+1;
                    }
                    if (preg_match("/ind_/", $obj_soal[$i])){
                        $kosong_ind = $kosong_ind+1;
                    }
                    if(preg_match("/^ing_/", $obj_soal[$i])){
                        $kosong_ing = $kosong_ing+1;
                    }
                }else{
                    if(preg_match("/^mtk_/", $obj_soal[$i])){
                        $salah_mtk = $salah_mtk+1;
                    }
                    if (preg_match("/ind_/", $obj_soal[$i])){
                        $salah_ind = $salah_ind+1;
                    }
                    if(preg_match("/^ing_/", $obj_soal[$i])){
                        $salah_ing = $salah_ing+1;
                    }
                }
            }
            
        }
        
        $data = array(
            'id_user'=>$id_user,
            'tgl'=>date('Y-m-d H:i:s'),
            'benar_mtk'=>$benar_mtk,
            'benar_ind'=>$benar_ind,
            'benar_ing'=>$benar_ing,
            'salah_mtk'=>$salah_mtk,
            'salah_ind'=>$salah_ind,
            'salah_ing'=>$salah_ing,
            'kosong_mtk'=>$kosong_mtk,
            'kosong_ind'=>$kosong_ind,
            'kosong_ing'=>$kosong_ing,
        );
        
        echo '<script language="javascript">';
        echo 'alert("'
                . 'Matematika Benar : '.$benar_mtk.' Salah : '.$salah_mtk.' Kosong : '.$kosong_mtk.'\n'
                . 'Bahasa Indonesia Benar : '.$benar_ind.' Salah : '.$salah_ind.' Kosong : '.$kosong_ind.'\n'
                . 'Bahasa Inggris Benar : '.$benar_ing.' Salah : '.$salah_ing.' Kosong : '.$kosong_ing.'\n'
                . '")';
        echo '</script>';
        $this->db->insert('try_tryout',$data);
    }
    public function ipaCari(){
        
        $nilai_bio=0;
        $nilai_kim=0;
        $nilai_fis=0;
        
        $kosong_bio=0;
        $kosong_kim=0;
        $kosong_fis=0;
        
        $benar_bio=0;
        $benar_kim=0;
        $benar_fis=0;
        
        $salah_bio=0;
        $salah_kim=0;
        $salah_fis=0;
        
        $id_user = $this->session->userdata('id');
        $max = count($this->input->post('jawab'));
        $obj_jwb = $this->input->post('jawab');
        $obj_soal = $this->input->post('soal');
        
               
        for($i = 1 ; $i<=$max ; $i++){
            $sql = "SELECT * FROM try_soal WHERE id_soal = '$obj_soal[$i]' AND jwb_soal = '$obj_jwb[$i]'";
            $query = $this->db->query($sql);
//            echo $sql."<br>";
           
            if($query->num_rows == 1 ){
                if(preg_match("/^bio_/", $obj_soal[$i])){
                    $benar_bio = $benar_bio+1;
                }
                if (preg_match("/kim_/", $obj_soal[$i])){
                    $benar_kim = $benar_kim+1;
                }
                if(preg_match("/^fis_/", $obj_soal[$i])){
                    $benar_fis = $benar_fis+1;
                }
            }else{
                if($obj_jwb[$i]==""){
                    if(preg_match("/^bio/", $obj_soal[$i])){
                        $kosong_bio = $kosong_bio+1;
                    }
                    if (preg_match("/kim_/", $obj_soal[$i])){
                        $kosong_kim = $kosong_kim+1;
                    }
                    if(preg_match("/^fis_/", $obj_soal[$i])){
                        $kosong_fis = $kosong_fis+1;
                    }
                }else{
                    if(preg_match("/^bio_/", $obj_soal[$i])){
                        $salah_bio = $salah_bio+1;
                    }
                    if (preg_match("/kim_/", $obj_soal[$i])){
                        $salah_kim = $salah_kim+1;
                    }
                    if(preg_match("/^fis_/", $obj_soal[$i])){
                        $salah_fis = $salah_fis+1;
                    }
                }
            }
            
        }
        
        $data = array(
            'benar_bio'=>$benar_bio,
            'salah_bio'=>$salah_bio,
            'benar_kim'=>$benar_kim,
            'salah_kim'=>$salah_kim,
            'benar_fis'=>$benar_fis,
            'salah_fis'=>$salah_fis,
            'kosong_bio'=>$kosong_bio,
            'kosong_kim'=>$kosong_kim,
            'kosong_fis'=>$kosong_fis,
        );
        
        echo '<script language="javascript">';
        echo 'alert("'
                . 'Biologi Benar : '.$benar_bio.' Salah : '.$salah_bio.' Kosong : '.$kosong_bio.'\n'
                . 'Kimia Benar : '.$benar_kim.' Salah : '.$salah_kim.' Kosong : '.$kosong_kim.'\n'
                . 'Fisika Benar : '.$benar_fis.' Salah : '.$salah_fis.' Kosong : '.$kosong_fis.'\n")';
        echo '</script>';
        
        $this->db->where('id_user',$id_user);
        $this->db->update('try_tryout',$data);
		echo 'dd';
    }
    
    public function ipsCari(){
                
        $kosong_eko=0;
        $kosong_geo=0;
        $kosong_sej=0;

        $benar_eko=0;
        $benar_geo=0;
        $benar_sej=0;
        
        $salah_eko=0;
        $salah_geo=0;
        $salah_sej=0;
        
        $id_user = $this->session->userdata('id');
        $max = count($this->input->post('jawab'));
        $obj_jwb = $this->input->post('jawab');
        $obj_soal = $this->input->post('soal');
          
        for($i = 1 ; $i<=$max ; $i++){
            
            //sebelum masuk dii insert dulu
            
            
            $sql = "SELECT * FROM try_soal WHERE id_soal = '$obj_soal[$i]' AND jwb_soal = '$obj_jwb[$i]'";
            $query = $this->db->query($sql);
//            echo $sql."<br>";
           
            if($query->num_rows == 1 ){
                if(preg_match("/^geo_/", $obj_soal[$i])){
                    $benar_geo = $benar_geo+1;
                }
                if (preg_match("/eko_/", $obj_soal[$i])){
                    $benar_eko = $benar_eko+1;
                }
                if(preg_match("/^sej_/", $obj_soal[$i])){
                    $benar_sej = $benar_sej+1;
                }
            }else{
                if($obj_jwb[$i]==""){
                    if(preg_match("/^geo_/", $obj_soal[$i])){
                        $kosong_geo = $kosong_geo+1;
                    }
                    if (preg_match("/eko_/", $obj_soal[$i])){
                        $kosong_eko = $kosong_eko+1;
                    }
                    if(preg_match("/^sej_/", $obj_soal[$i])){
                        $kosong_sej = $kosong_sej+1;
                    }
                }else{
                    if(preg_match("/^geo_/", $obj_soal[$i])){
                        $salah_geo = $salah_geo+1;
                    }
                    if (preg_match("/eko_/", $obj_soal[$i])){
                        $salah_eko = $salah_eko+1;
                    }
                    if(preg_match("/^sej_/", $obj_soal[$i])){
                        $salah_sej = $salah_sej+1;
                    }
                }
            }           
        }
        
        $data = array(
            'benar_eko'=>$benar_eko,
            'salah_eko'=>$salah_eko,
            'benar_geo'=>$benar_geo,
            'salah_geo'=>$salah_geo,
            'benar_sej'=>$benar_sej,
            'salah_sej'=>$salah_sej,
            'kosong_eko'=>$kosong_eko,
            'kosong_geo'=>$kosong_geo,
            'kosong_sej'=>$kosong_sej,
        );
        
        echo '<script language="javascript">';
        echo 'alert("'
                . 'Ekonomi Benar : '.$benar_eko.' Salah : '.$salah_eko.' Kosong : '.$kosong_eko.'\n'
                . 'Sejarah Benar : '.$benar_eko.' Salah : '.$salah_eko.' Kosong : '.$kosong_eko.'\n'
                . 'Geografi Benar : '.$benar_geo.' Salah : '.$salah_geo.' Kosong : '.$kosong_geo.'\n")';
        echo '</script>';
        
        $this->db->where('id_user',$id_user);
        $this->db->update('try_tryout',$data);
    }
    
    public function cek_ipa($id=null){
        
        
        $this->db->where('id_user',$id);
        $this->db->where('benar_bio',0);
        $this->db->where('benar_kim',0);
        $this->db->where('benar_fis',0);
        $this->db->where('salah_bio',0);
        $this->db->where('salah_kim',0);
        $this->db->where('salah_fis',0);
        $this->db->where('kosong_bio',0);
        $this->db->where('kosong_kim',0);
        $this->db->where('kosong_fis',0);
        $hasil = $this->db->get('try_tryout');
        
        if($hasil->num_rows()!=0){
                return $cek = 'belum';
        }else{
                return $cek = 'sudah';
        }
    }
    
    public function cek_dasar($id=null){
        
        $this->db->where('id_user',$id);
        $sql = $this->db->get('try_tryout');
        if($sql->num_rows()!=0){
            return $cek = 'sudah';
        }else{
            return $cek = 'belum';
        }
    }
    
    public function cek_ips($id=null){
        
        $this->db->where('id_user',$id);
        $this->db->where('benar_eko',0);
        $this->db->where('benar_geo',0);
        $this->db->where('benar_sej',0);
        $this->db->where('salah_eko',0);
        $this->db->where('salah_geo',0);
        $this->db->where('salah_sej',0);
        $this->db->where('kosong_eko',0);
        $this->db->where('kosong_geo',0);
        $this->db->where('kosong_sej',0);
        $hasil = $this->db->get('try_tryout');
        
        if($hasil->num_rows()!=0){
            return $cek = 'belum';
        }else{
            return $cek = 'sudah';
        }
    }
}