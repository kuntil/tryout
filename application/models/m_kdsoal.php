<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class M_kdsoal extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function add(){
        $max = count($this->input->post('soalnya')); 
               
        $obj = $this->input->post('soalnya');
        
        $mata = $this->input->post('mata');
        
        if($mata == 'matematika'){
            $kd = 'kdmtk_';
        }
        if($mata == 'bahasa indonesia'){   
            $kd = 'kdind_';
        }
        if($mata == 'bahasa inggris'){   
            $kd = 'kding_';
        }
        if($mata == 'biologi'){   
            $kd = 'kdbio_';
        }
        if($mata == 'kimia'){   
            $kd = 'kdkim_';
        }
        if($mata == 'fisika'){   
            $kd = 'kdfis_';
        }
        if($mata == 'ekonomi'){   
            $kd = 'kdeko_';
        }
        if($mata == 'sejarah'){   
            $kd = 'kdsej_';
        }
        if($mata == 'geografi'){   
            $kd = 'kdgeo_';
        }
        
        $this->db->like('id_soal',$kd);
        $id = $this->db->count_all_results('try_kode');
        $nilai = str_split($id);
        
        if(count($nilai)==1){
            $nol ='00';
            $i = 0;
            $status = NULL;
            do{
                $id= increment_string($kd,$nol,$i);
                $this->db->like('kd_soal',$id);
                $status = $this->db->count_all_results('try_kode'); 
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
                $this->db->like('kd_soal',$id);
                $status = $this->db->count_all_results('try_kode'); 
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
                $this->db->like('kd_soal',$id);
                $status = $this->db->count_all_results('try_kode'); 
                echo "$status";
                $i++;
            }while ($status != 0);
            
        }
               
        for($i=0;$i<$max;$i++){
           $obj[$i];
           $data = array(
            'kd_soal' => $id,
            'mata_pelajaran' => $mata,
            'id_soal'=>$obj[$i],
           );
           $this->db->insert('try_kode',$data);
        }
    }
        
}
?>
