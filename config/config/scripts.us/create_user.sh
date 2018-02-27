
 Ejecutable  22 líneas (18 sloc)  581 Bytes
#! / bin / bash
# S'indica una variable dintre del script i li donem nom de l'usuari i contrasenya donat en la varible d'entorn
usuario = $ USER
pwd = $ PASSWORD

# Comprovació si l'usuari existeix o no
ret = falso
getent contraseña $ usuario  > / dev / null 2> & 1  && ret = true
# En cas de alguna misstge ho envia a / dev / null

si  $ ret ;  entonces
echo  "el usuario ya existe " ;
más

# Creant l'usuari
useradd $ usuario -d / data / $ usuario
echo  " $ {user} : $ {pwd} "  | chpasswd
# Donant-li permisos de administrador al usuario afegint-ho a sudoers
echo  " $ {user}   ALL = (ALL) NOPASSWD: ALL "  > /etc/sudoers.d/ $ user
echo  " creado por el usuario "
fi
