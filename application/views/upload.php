<?php

/*
 * @Author arum
 * @Email yophy@kendari.linux.or.id
 * Copyright awank genetika 2013 .
 */
$fileName = $_FILES['picture']['name'];  
$fileSize = $_FILES['picture']['size'];  
$fileError = $_FILES['picture']['error'];
$fileType = $_FILES['picture']['type'];
$success = false;  

if($fileSize > 0 || $fileError == 0){  
    $move = move_uploaded_file($_FILES['picture']['tmp_name'], '../upload/'.$fileName); //Simpan ke folder images
    if($move){  
        $success = true;  
    }
}


echo '<script type="text/javascript">';  
if($success==TRUE){  
    echo "parent.displayPic('../admin/upload/$fileName');";
}
else{  
    echo "alert('Upload gagal $fileError');";  
}  
echo '</script>';
?>
