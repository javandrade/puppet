class exercicio {

file{"/root/.bashrc":
       source =>"puppet:///modules/exercicio/bashrc",
       ensure => present,
     }
     
case $::osfamily{
			
		  "RedHat":{
			  $pacotes = ["httpd","crontabs","git"]
			   }

		  "Debian":{
                          $pacotes = ["apache2","cron","git"]
                           }

}
 
 package {$pacotes:
	   ensure => present,
	 }

$users = ["devops","jorge","judith"] 

 user{$users:
    ensure => present,	
 }

}

