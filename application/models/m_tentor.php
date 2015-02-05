<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_tentor extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function add(){
        
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $mata = $this->input->post('mata_pelajaran');
        $pendidikan = $this->input->post('pendidikan');
        $no_hp = $this->input->post('no_hp');
        $password = md5($this->input->post('password'));
        
        $data = array(
            
            'nama'=>$nama,
            'username'=>$username,
            'password'=>$password,
            'matapelajaran'=>$mata,
            'pendidikan'=>$pendidikan,
            'no_hp'=>$no_hp,
            'password'=>$password,
        );
        
        $this->db->insert('try_tentor',$data);
        
    }
    
    public function edit($id=null){
        
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $mata = $this->input->post('mata_pelajaran');
        $pendidikan = $this->input->post('pendidikan');
        $no_hp = $this->input->post('no_hp');
        $password = $this->input->post('password');
        
        $data = array(
            
            'nama'=>$nama,
            'username'=>$username,
            'matapelajaran'=>$mata,
            'pendidikan'=>$pendidikan,
            'no_hp'=>$no_hp,
            'password'=>$password
        );
        $this->db->where('id_tentor',$id);
        $this->db->update('try_tentor',$data);
        
    }
    
    public function delete($id=null){
        
        $this->db->where('id_tentor',$id);
        $this->db->delete('try_tentor');
        
    }
}

