<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class M_login extends CI_Model{
    
    
   // var $tabel_name = 'users';

    function  __construct() {
        parent::__construct();
    }

    function cek_admin_login($username, $password) {
        $this->db->select('*');
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));

        $query = $this->db->get('try_admin', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    
    function cek_tentor_login($username, $password) {
        $this->db->select('*');
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));

        $query = $this->db->get('try_tentor', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    function cek_user_login($username, $password) {
        $this->db->select('*');
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));

        $query = $this->db->get('try_user', 1);

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }
    }
    
    function edit($id = NULL){
        $user  = $this->input->post('user');
        $pass  = md5($this->input->post('pass'));
        
        $data = array(
            'password' => $pass,
        );
        $this->db->update('try_admin',$data);
        }
    function select($id  = NULL){
        return $this->db->get_where('try_admin', array('id_admin' => $id))->row();
    }
}
?>
