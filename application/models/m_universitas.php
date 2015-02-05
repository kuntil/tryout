<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class M_universitas extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
        
    public function add(){
    
        $universitas = $this->input->post('universitas');
        $jurusan = $this->input->post('jurusan');
        $prodi = $this->input->post('studi');
        $kursi = $this->input->post('kursi');
        $point = $this->input->post('point');
		$jml_tdk_lulus = $this->input->post('jml_tdk_lulus');
		$jml_peminat = $this->input->post('jml_peminat');
        
        $data = array(
            
            'universitas'=>$universitas,
            'jurusan'=>$jurusan,
            'program_studi'=>$prodi,
            'kursi'=>$kursi,
            'point'=>$point,
			'jml_tdk_lulus'=>$jml_tdk_lulus,
			'jml_peminat'=>$jml_peminat
        );
        
        $this->db->insert('try_universitas',$data);
    }
    
    public function edit($id=null){
    
        $universitas = $this->input->post('universitas');
        $jurusan = $this->input->post('jurusan');
        $prodi = $this->input->post('studi');
        $kursi = $this->input->post('kursi');
        $point = $this->input->post('point');
		$jml_tdk_lulus = $this->input->post('jml_tdk_lulus');
		$jml_peminat = $this->input->post('jml_peminat');
        
        $data = array(
            
            'universitas'=>$universitas,
            'jurusan'=>$jurusan,
            'program_studi'=>$prodi,
            'kursi'=>$kursi,
            'point'=>$point,
			'jml_tdk_lulus'=>$jml_tdk_lulus,
			'jml_peminat'=>$jml_peminat
        );
        
        $this->db->where('id_universitas',$id);
        $this->db->update('try_universitas',$data);
    
    }
    
    public function delete($id){
        $this->db->where('id_universitas',$id);
        $this->db->delete('try_universitas');
    }
}
