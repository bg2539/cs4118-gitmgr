#!/bin/bash

csvtool drop 1 "$1" | csvtool -u ' ' col 2,3 -
