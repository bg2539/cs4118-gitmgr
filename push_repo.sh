#!/bin/bash
set -e
DIR=$(readlink -f $(dirname $0))
HW=${1}
REMOTE="git@github.com:W4118"
if [ "${HW}" == "" ]
then
  echo "no hmwk specified" >&2
  exit 1
fi
set -x
push_repo() {
  pushd ${DIR}/template/${HW}
  git remote rm origin || true
  git remote add origin "${REMOTE}/${HW}-${1}.git"
  git push origin --all
  popd
}
while read line
do
  push_repo $line
done
