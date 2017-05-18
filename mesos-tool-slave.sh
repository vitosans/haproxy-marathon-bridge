#!/bin/bash - 
#===============================================================================
#
#          FILE: mesos-tool-master.sh
# 
#         USAGE: ./mesos-tool-master.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Vito Louis Sansevero (www.greenwavesystems.com), vito.sansevero@greenwavesystems.com
#  ORGANIZATION: Greenwave Systems
#       CREATED: 05/18/2017 14:08:40
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

case "$1" in
    'start')
        echo "Starting zookeeper"
        service zookeeper start

        echo "Starting mesos-slave"
        service mesos-slave start

        ;;

    'stop')
        echo "Stopping mesos-slave"
        service mesos-slave stop

        echo "Stopping zookeeper"
        service zookeeper stop
        ;;
esac
