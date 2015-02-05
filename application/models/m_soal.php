<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class M_soal extends CI_Model {
    
    
    public function __construct() {
        parent::__construct();
    }
    
    public function tambah(){
        $id = $this->input->post('id');
        $mata = $this->input->post('mata_pelajaran');
        $soal = $this->input->post('soal');
        $a = $this->input->post('a');
        $b = $this->input->post('b');
        $c = $this->input->post('c');
        $d = $this->input->post('d');
        $e = $this->input->post('e');
        $jawaban = $this->input->post('jawaban');
        $penjelasan = $this->input->post('penjelasan');
        
        if($mata == 'matematika'){
            $kd = 'mtk_';
        }
        if($mata == 'bahasa indonesia'){   
            $kd = 'ind_';
        }
        if($mata == 'bahasa inggris'){   
            $kd = 'ing_';
        }
        if($mata == 'biologi'){   
            $kd = 'bio_';
        }
        if($mata == 'kimia'){   
            $kd = 'kim_';
        }
        if($mata == 'fisika'){   
            $kd = 'fis_';
        }
        if($mata == 'ekonomi'){   
            $kd = 'eko_';
        }
        if($mata == 'sejarah'){   
            $kd = 'sej_';
        }
        if($mata == 'geografi'){   
            $kd = 'geo_';
        }
        
        $this->db->like('id_soal',$kd);
        $id = $this->db->count_all_results('try_soal');
        $nilai = str_split($id);
        
        if(count($nilai)==1){
            $nol ='00';
            $i = 0;
            $status = NULL;
            do{
                $id= increment_string($kd,$nol,$i);
                $this->db->like('id_soal',$id);
                $status = $this->db->count_all_results('try_soal'); 
                echo "$status";
                $i++;
            }while ($status != 0);
            
        }
        if(count($nilai)==2){
            $nol ='0';
            $status = NULL;
            $i = 11;
            do{
                $id= increment_string($kd,$nol,$i);
                $this->db->like('id_soal',$id);
                $status = $this->db->count_all_results('try_soal'); 
                echo "$status";
                $i++;
            }while ($status != 0);
        }
        if(count($nilai)==3){
            $nol='';
            $status = NULL;
            $i = 101;
            do{
                $id= increment_string($kd,$nol,$i);
                $this->db->like('id_soal',$id);
                $status = $this->db->count_all_results('try_soal'); 
                echo "$status";
                $i++;
            }while ($status != 0);
            
        }
       
        $data = array(
            'id_soal' => $id,
            'soal' => $soal,
            'plh_a' => $a,
            'plh_b' => $b,
            'plh_c' => $c,
            'plh_d' => $d,
            'plh_e' => $e,
            'jwb_soal' => $jawaban,
            'mata_pelajaran'=>$mata,
            'penjelasan' => $penjelasan
            
        );
        
        $this->db->insert('try_soal',$data);
    }
    
    public function edit(){
        
        $id = $this->input->post('id');
        $mata = $this->input->post('matapelajaran');
        $soal = $this->input->post('soal');
        $a = $this->input->post('a');
        $b = $this->input->post('b');
        $c = $this->input->post('c');
        $d = $this->input->post('d');
        $e = $this->input->post('e');
        $jawaban = $this->input->post('jawaban');
        $penjelasan = $this->input->post('penjelasan');
        
        $data = array(
            'soal' => $soal,
            'plh_a' => $a,
            'plh_b' => $b,
            'plh_c' => $c,
            'plh_d' => $d,
            'plh_e' => $e,
            'jwb_soal' => $jawaban,
            'mata_pelajaran'=>$mata,
            'penjelasan' => $penjelasan
            
        );
        $this->db->where('id_soal',$id);
        $this->db->update('try_soal',$data);
        
    }
    
    public function hapus($id){
        $this->db->where('id_soal',$id);
        $this->db->delete('try_soal');
        
    }
    
    public function select($id){
        return $this->db->get_where('try_soal', array('id_soal' => $id))->row();
    }
    
}
?>
