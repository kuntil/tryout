
<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

switch ($this->uri->segment(2)) {
    case "" :
        require_once 'home.php';
        break;

    case "registrasi" :
        require_once 'registrasi.php';
        break;
    
    case "login" :
        require_once 'login.php';
        break;
    
    case "informasi" :
        require_once 'informasi.php';
        break;
    
    case "jadwal" :
        require_once 'jadwal.php';
        break;
    
    case "petunjuk":
        require_once 'petunjuk.php';
        break;
    
    case "kontak" :
        require_once 'kontak.php';
        break;
    
    case "profile" :
        require_once 'profile.php';
        break;
    
    case "tryout" :
        require_once 'tryout.php';
        break;
    
    case "tambahan" : 
        require_once 'tambahan.php';
        break;
    
    case "jilc" :
        require_once 'jilc.php';
        break;
    
    case "bimbel" :
        require_once 'bimbel.php';
        break;
    
    case "pembelajaran" :
        require_once 'pembelajaran.php';
        break;
    
    case "roster" :
        require_once 'roster_tambahan.php';
        break;
    
    case "compare" :
        require_once 'compare.php';
        break;
}

