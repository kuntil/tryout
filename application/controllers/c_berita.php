<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class C_berita extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $this->load->library('pagination');
        $config['base_url']=base_url().'index.php/c_berita/index/';
        $config['total_rows']= $this->db->count_all('try_berita');
        $config['per_page']=10;
        $config['num_links']=20;
        $this->pagination->initialize($config);

        $data['hasil']=  $this->db->get('try_berita',$config['per_page'], $this->uri->segment(3));
        $data['title']='List Berita';
       
        $this->load->view('admin/list_berita',$data);
    }
    
    public function add_berita(){
        
        if($this->input->post('submit')){
            
            $this->load->model('m_berita');
            $this->m_berita->add();
            redirect('c_berita/index');
        }
        $data['title']='Add Berita';
        $this->load->view('admin/input_berita',$data);
        
    }
        
    public function delete(){
       $this->db->where('kd_soal',$id);
       $this->db->delete('try_kode');
       redirect('c_kdsoal');
        
    }


    
}
?>
