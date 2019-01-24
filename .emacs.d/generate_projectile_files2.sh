###################################################
#   DECLARACION DE FUNCIONES      
###################################################

# Printa norma a archivo FICH_LOG
# Printa en color por consola, segun la primera palabra sea:
#   NOTA  --> Color Cyan
#   AVISO --> Color Amarillo
#   OK    --> Color Verde
#   ERROR --> Color Rojo
# suprime la primera palabra.
# Ejemplo de uso: print_color NOTA "HOLA don pepito"
#
function print_color() {
        local l_color=${1:-}
        local l_quitar_atributos=$'\033[0m'
        if   [ "$l_color" = "ERROR" ];     then l_color=$'\033[1;31m'; shift;
        elif [ "$l_color" = "OK" ];    then l_color=$'\033[1;32m'; shift;
        elif [ "$l_color" = "AVISO" ]; then l_color=$'\033[0;33m'; shift;
        elif [ "$l_color" = "NOTA" ];     then l_color=$'\033[1;36m'; shift;
        else l_color=$l_quitar_atributos; fi

        printf "%s%s%s\n" "$l_color" "$*" "$l_quitar_atributos"
#        echo "$*"
}


function generate_AUSTEC_projectile_files() {

    print_color NOTA "cd ${ROOT_PROJECT}/src/bin" 
    cd ${ROOT_PROJECT}/src/bin
    print_color NOTA "Creating .projectile files for SATECH bin"
    for i in `ls -l | awk '{print $9}'`; do 
	echo "project $i"; 
#	touch .projectile
	if [ $? -ne 0 ]; then
	    print_color ERROR "Error creating projectile, ${i}";
	    exit -1;	
	fi
    done
    print_color OK "OK"
    echo

    print_color NOTA "cd ${ROOT_PROJECT}/src/lib" 
    cd ${ROOT_PROJECT}/src/lib
    print_color NOTA "Creating .projectile files for SATECH lib"
    for i in `ls -l | awk '{print $9}'`; do 
	echo "project $i"; 
#	touch .projectile
	if [ $? -ne 0 ]; then
	    print_color ERROR "Error creating projectile, ${i}";
	    exit -1;	
	fi
    done
    print_color OK "OK"
    echo
}

function generate_SATECH_projectile_files() {

    print_color NOTA "cd ${ROOT_PROJECT}/SATECH/src/bin" 
    cd ${ROOT_PROJECT}/SATECH/src/bin
    print_color NOTA "Creating .projectile files for SATECH bin"
    for i in `ls -l | awk '{print $9}'`; do 
	echo "project $i"; 
#	touch .projectile
	if [ $? -ne 0 ]; then
	    print_color ERROR "Error creating projectile, ${i}";
	    exit -1;	
	fi
    done
    print_color OK "OK"
    echo

    print_color NOTA "cd ${ROOT_PROJECT}/SATECH/src/lib" 
    cd ${ROOT_PROJECT}/SATECH/src/lib
    print_color NOTA "Creating .projectile files for SATECH lib"
    for i in `ls -l | awk '{print $9}'`; do 
	echo "project $i"; 
#	touch .projectile
	if [ $? -ne 0 ]; then
	    print_color ERROR "Error creating projectile, ${i}";
	    exit -1;	
	fi
    done
    print_color OK "OK"
    echo
}

function mostrar_uso() {
        echo "$0: Numero de argumentos incorrecto"
	echo
	echo "Uso:"
	echo "generate_projectile_files root_austec"
	echo
	echo "	root_austec -> ruta austec"
}

####################################
#	MAIN
####################################

FICH_LOG="genera_instalador_automatico.log"
RUTA_LANZAMIENTO=${PWD}

VAUSTEC="00.00"
VSATECH="00.00"
VINST="00.00"

AUSTECTARGZ="aus-tec_${VAUSTEC}_$(date +%y_%m_%d)-bin.tgz"
SATECHTARGZ="SCU_${VSATECH}_intel_$(date +%y_%m_%d)-bin.tgz"

ENTORNO=`basename $PWD`
RUTA_AUSTECTARGZ="/home/desa/$ENTORNO/aus-tec_${VAUSTEC}_$(date +%y_%m_%d)-bin.tgz"
RUTA_SATECHTARGZ="/home/desa/$ENTORNO/saTECH-SCU/SCU_${VSATECH}_intel_$(date +%y_%m_%d)-bin.tgz"
RUTA_JAVATARGZ=""

UBICACION_AUSTEC="/home/desa/$ENTORNO/"
UBICACION_SATECH="/home/desa/$ENTORNO/saTECH-SCU/"

PARAM_INST="INTEL INCLUIR_DEBUG"

ROOT_PROJECT="/home/desa/workspace/"

if [ $# -eq 1 ]; then
    ROOT_AUSTEC=${1}
    echo 
    print_color NOTA "##########################################"
    print_color NOTA " Creando projectiles"
    print_color NOTA "##########################################"
    echo
    generate_projectile_files
else
	mostrar_uso
	exit -1	
fi






