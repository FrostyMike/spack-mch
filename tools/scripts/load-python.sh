#!/bin/bash
# Author: Mikhail Zhigun
# Copyright (C) 2020 MeteoSwiss

#1st argument is machine name

if [ $# -eq 0 ]
  then
    MACHINE_NAME="$(hostname -s)"
  else
    MACHINE_NAME=$1
fi

echo "Machine name: '${MACHINE_NAME}'"

#Load python on CSCS machines
case ${MACHINE_NAME} in
      tsa*|arolla*) module load python/3.7.4;;
      daint*) module load cray-python;;
esac

#Check if python is available
command -v python >/dev/null 2>&1 ||
{ echo >&2 "Error! python not available
";
  exit 1
}

echo $(python -V)



