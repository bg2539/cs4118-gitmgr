#!/bin/bash
set -e
DIR=$(readlink -f $(dirname $0))
HW=${1}
if [ "${HW}" == "" ]
then
  echo "no hmwk specified" >&2
  exit 1
fi
set -x
while read line
do
  ${DIR}/SetMember ${HW}-${line}
done
