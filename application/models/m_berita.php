<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class M_berita extends CI_Model {
    
    
    public function __construct() {
        parent::__construct();
        
        $this->gallerypath = realpath(APPPATH . '../upload/berita');
        $this->gallery_path_url = base_url() .'upload/berita/';
    }
    
    public function add(){
        
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
            'maintain_ration'=> true,
            'width' => 160,
            'height'=> 120
        );

        $this->load->library('image_lib', $config);
        $this->image_lib->resize();
        
        $judul = $this->input->post('judul');
        $isi = $this->input->post('isi');
        $tanggal = date('Y-m-d H:i:s');
       
        $userfile = random_string().".jpg";        
        $data = array(
            'judul'=>$judul,
            'isi'=>$isi,
            'tgl'=>$tanggal,
            'file'=>$userfile
        );
        
        $this->db->insert('try_berita',$data);
    }
    
    public function update(){
        
    }
      
    public function getId($id){
        return $this->db->get_where('try_berita', array('id' => $id))->row();
        
    }
}
?>
