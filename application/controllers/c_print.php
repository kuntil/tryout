<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class C_print extends CI_Controller {
    
    
    public function __construct() {
        parent::__construct();
        
    }
    
    
    public function index(){
        
    if($this->input->post("submit")){
        $matapelajaran = $this->input->post("mata_pelajaran");
        $this->db->where('mata_pelajaran',$matapelajaran);
        $this->db->group_by('kd_soal');
        $data['hasil']=$this->db->get('try_kode');
        $data['title']='Print Paket';
        
        $this->load->view("admin/print_paket",$data);
        
    }else{
    $this->db->group_by('kd_soal');
    $data['hasil']=$this->db->get('try_kode');
    $data['title']='Print Paket';
    $data["content"]="Print Paket";
    $this->load->view("admin/print_paket",$data);  
    }
    }
    
    public function cetak($id=null){
        
        $this->load->library('get_fpdf');
        $this->db->from('try_kode,try_soal');
        $this->db->where('try_kode.id_soal = try_soal.id_soal');
        $this->db->where('try_kode.kd_soal',$id);
        $query = $this->db->get();
        
        $pdf = new FPDF('P','cm','A4');
		$pdf->AddPage();
		$pdf->SetFont('Arial','B',20);
		$pdf->MultiCell(0,1,"BIMBINGA BELAJAR",0,'C');
		$pdf->MultiCell(0,1,"JAKARTA INTENSIVE LEARING CENTER",0,'C');
                $pdf->Ln();
                $pdf->SetFont('Arial','',12);
                $i=1;
                foreach ($query->result() as $row):
//                $pdf->MultiCell(0, 1, strip_tags(htmlspecialchars($row->soal)),0,'J');
                
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',$i.". ".$row->soal);
                $pdf->MultiCell(0, 1,$hasil,0,'J');
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',"a. ".$row->plh_a);
                $pdf->MultiCell(0, 1, $hasil);
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',"b. ".$row->plh_b);
                $pdf->MultiCell(0, 1, $hasil);
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',"c. ".$row->plh_c);
                $pdf->MultiCell(0, 1, $hasil);
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',"d. ".$row->plh_d);
                $pdf->MultiCell(0, 1, $hasil);
                $hasil = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/','',"e. ".$row->plh_e);
                $pdf->MultiCell(0, 1, $hasil);
                $pdf->ln();
                $i++;
                endforeach;
                $pdf->Output();
        
    }
}
