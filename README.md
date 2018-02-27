CentOS amb supervisor configurat per funcionar amb httpd-vsftpd
Centos amb dos serveis Apache i vsftpd

Docker run :

Indicar ports :

Apache per defecte el 80
Minidlna per defecte el 21
Supervisor per defecte el 9001

Usuari | Variables d'entorn :
Hi ha dues variables d'entorn per tal de configurar l'usuari i contrasenya :

Username per defecte : docker
Password per defecte : root

Directoris de configuració que s'han afegit :
config : scripts de configuració de l'usuari i contrasenya i iniciar el funcionament del supervisor.
etc : fitxer de configuració del minidlna, amb la configuració del supervisor.

Exemple docker run :
docker run -itd -p 80:8080 -p 8200:8200 -p 9001:9001 -e USER=aurel -e PASSWORD=aurel ndongelo/centos-supervisor-httpd-vsftpd


Aurelio 
docker pull ndongelo/centos-supervisor-httpd-vsftpd
