#!/bin/bash

java -classpath $(dirname $0)/classroom-mgr.jar $(basename $0) "$@"
