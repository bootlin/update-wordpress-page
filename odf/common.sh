# Common script routines and definitions

command_exists () {

	command -v "$1" &> /dev/null

	if [ $? != 0 ]
	then
		echo "ERROR: program $1 is not available"
		exit 1
	fi 
}

check_variables () {
	for var in $*
	do	
        	if [ -z "${!var}" ]
        	then
                	echo "ERROR: \"${var}\" variable not set"
                	exit 1
        	fi
	done
}

# Definitions

CP='/bin/cp -f'
MKDIR='/bin/mkdir -p'
RM='/bin/rm -f'
MV='/bin/mv -f'
SVNBIN='/usr/bin/svn'
UTILS=$GIT/training-scripts/odf

