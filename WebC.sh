enviarUncorreo(){
	echo 'Ingrese correo suplantado'
	read to
	clear

	echo 'Remitente' $to
	echo 'Direccion correo receptor'
	read from
	clear

	echo 'Remitente' $to
	echo 'Direccion correo receptor' $from
	echo 'Ingrese nombre'
	read name
	clear

    echo 'Remitente' $to
	echo 'Direccion correo receptor' $from
	echo 'Ingrese nombre' $name
	echo 'Ingrese el titulo'
	read sub
	clear

	echo 'Remitente' $to
	echo 'Direccion correo receptor' $from
	echo 'Ingrese nombre' $name
	echo 'Ingrese el titulo' $sub
	echo 'Ingrese el mensaje en HTML'
	read msg
	clear
    
    echo 'Remitente' $to
	echo 'Direccion correo receptor' $from
	echo 'Ingrese nombre' $name
	echo 'Ingrese el titulo' $sub
	echo 'Ingrese el mensaje en HTML' $msg

	echo 'Deseas enviar este mensaje? [s/n]'
	read $respuesta
	case $respuesta in
	    	s)
            curl --data "to=$to && from=$from && name=$name && sub=$sub && msg=$msg" https://sirahs.000webhostapp.com/
	    		;;
	    	n)
             clear
             Banner
             menuInicial
	    esac    
            

}

menuInicial(){
	clear

	echo -e '\e[92mSirakHs
	'
	echo ''
	echo 'Presione i para iniciar'
	read opcion
	case $opcion in
		i)
         enviarUncorreo
         ;;
         esac
}

Banner
menuInicial