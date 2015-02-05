<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_user extends CI_Model {
    
    public function __construct() {
        parent::__construct();
        
        $this->gallerypath = realpath(APPPATH . '../upload/profile');
        $this->gallery_path_url = base_url() .'upload/profile/';
    }
    
    public function add(){
                
       $nama = $this->input->post('nama');
       $sekolah = $this->input->post('sekolah');
       $kelas = $this->input->post('kelas');
       $no_hp = $this->input->post('hp');
       $username = $this->input->post('username');
       $password = md5($this->input->post('password'));
       
       $data = array(
           
           'nama'=>$nama,
           'sekolah'=>$sekolah,
           'kelas'=>$kelas,
           'no_hp'=>$no_hp,
           'username'=>$username,
           'password'=>$password
       );
       
       $this->db->insert('try_user',$data);
    }
    
    public function edit($id=null){
        
       $config = array(
            'allowed_types' =>'jpg|jpeg|gif|png|bmp',
            'upload_path'   => $this->gallerypath
        );

        $this->load->library('upload',$config);
        $this->upload->do_upload();
        $datafile = $this->upload->data();

        $config = array (
            'source_image' => $datafile['full_path'],
            'new_image' => $this->gallerypath . '/thumbnails',
            'maintain_ration'   => true,
            'width' => 160,
            'height'=> 120
        );

       $this->load->library('image_lib', $config);
       $this->image_lib->resize();
       
       $gambar = $_FILES['userfile']['name'];
       $nama = $this->input->post('nama');
       $sekolah = $this->input->post('sekolah');
       $kelas = $this->input->post('kelas');
       $no_hp = $this->input->post('telp');
       $username = $this->input->post('username');
       $password = md5($this->input->post('password'));
       
       $data = array(
           
           'nama'=>$nama,
           'sekolah'=>$sekolah,
           'kelas'=>$kelas,
           'no_hp'=>$no_hp,
           'username'=>$username,
           'password'=>$password,
           'gambar'=>$gambar
       );
       
       print_r($data);
       
       $this->db->where('id_user',$id);
       $this->db->update('try_user',$data);
       
    }
    
    public function delete($id=null){
        
        $this->db->where('id_user',$id);
        $this->db->delete('try_user');
        
    }
    
    public function nilai($id=null){
        $this->db->from('try_target,try_universitas');
        $this->db->where('try_target.id_universitas = try_universitas.id_universitas');
        $this->db->where('try_target.id_usr',$id);
        $this->db->limit(3);
        $this->db->order_by('point','DESC');
        return $nilai = $this->db->get();
    }
}