<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class C_kdsoal extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
       $this->load->library('pagination');
       $config['base_url']=base_url().'index.php/c_soal/index/';
       $config['total_rows']= $this->db->count_all('try_soal');
       $config['per_page']=10;
       $config['num_links']=20;
       $this->pagination->initialize($config);
       
       
       $this->db->group_by('kd_soal');
       $data['hasil']= $this->db->get('try_kode');
       $data['title']='List Soal';
       
       $this->load->view('admin/list_kdsoal',$data);
    }
    
    public function create(){
        $data['title']="Input Soal";
        $mata = $this->input->post('mata');
        $this->db->like('id_soal',$mata);
        $data['hasil'] = $this->db->get('try_soal');
        $this->load->view('admin/input_kdsoal',$data);
        
    }
    
    public function add(){
       $this->load->model('m_kdsoal');
       $this->m_kdsoal->add();
       redirect('c_kdsoal');
        
    }


    public function delete($id=null){
       $this->db->where('kd_soal',$id);
       $this->db->delete('try_kode');
       redirect('c_kdsoal');
                
    }
    
    public function list_all($id){
       $query = "SELECT * FROM try_soal, try_kode WHERE try_soal.id_soal  = try_kode.id_soal AND try_kode.kd_soal = '$id' ";
       $data['hasil'] = $this->db->query($query); 
       $data['kode_soal']=$id;
       $data['title']="List Soal";
       $this->load->view('admin/det_kdsoal',$data);
    }
}
?>
