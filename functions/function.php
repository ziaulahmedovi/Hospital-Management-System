<?php
	function get_header(){
		require_once('./includes/header.php');
	}
	
	function get_part($addpart){
		include_once('./includes/'.$addpart);	
	}
	function get_footer(){
		require_once('./includes/footer.php');	
	}

//        Dashboard fuction
        
        
        	function getDashboard_header(){
		require_once('./includes/admin/header.php');
	}
	
        	function getDashboard_navbar(){
		require_once('./includes/admin/navbar.php');
	}
	
	function getDashboard_part($addpart){
		include_once('./includes/admin/'.$addpart);	
	}
	function getDashboard_menufooter(){
		require_once('./includes/admin/menufooter.php');	
	}
	
	function getDashboard_topnavigation(){
		require_once('./includes/admin/topnavigation.php');	
	}
	function getDashboard_footer(){
		require_once('./includes/admin/footer.php');	
	}
        
        
        
        
        
        
        
        
        
        function auth($type){
            session_start();
            if($_SESSION['user']==NULL || $type!=$_SESSION['type'] )
            header('Location: ./sign_in.php'); 
            }
            
            
        function opossiteAuth(){
            session_start();
            //if($_SESSION['user']!=NULL )
            if(!empty($_SESSION['user']))
            {
                if($_SESSION['type']=="seller")
            header('Location: ./userDashboard.php');  
                if($_SESSION['type']=="admin")
            header('Location: ./adminDashboard.php');         
            
            }
        }

        
	function get_logoutButton(){
		require_once('./dashboard/logoutButton.php');	
	}
	
	function get_DashBoardpart($addpart){
		include_once('./dashboard/'.$addpart);	
	}
	
	function get_dashBoardContent($addpart){
		include_once('./dashboard/'.$addpart);	
	}
	
