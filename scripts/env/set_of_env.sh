. /opt/intel/bin/iccvars.sh intel64
. /opt/OpenFOAM/OpenFOAM-1.7.x/etc/bashrc

# SET PWServer env
export set LD_LIBRARY_PATH=/opt/activemq-cpp/lib:/opt/OpenFOAM/paraviwweb/lib:$LD_LIBRARY_PATH
export set PATH=/opt/OpenFOAM/paraviwweb/bin:$PATH
