<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="main">  
    <section class="post">
        <center><h2>Form Login</h2></center>
        <div class="post-center">
            <div class="form-login">
		<?php echo form_open('c_login/loginusr')?>
                    <h4>Username :</h4>
                    <span class="field"><input name="username" type="text" class="field" value="Username ..." title="Username ..." /></span><br>
                    <h4>Password :</h4>
                    <span class="field"><input name="password" type="text" class="field" value="Password ..." title="Password ..." /></span>
                    <br><br>
                <input type="submit" name="submit" value="Login" class="button"/>
                <input type="reset" name="submit" value="Reset" class="button"/>
		</form>
            </div>
        </div>
        <div class="cl">&nbsp;</div>
    </section>
</div>
