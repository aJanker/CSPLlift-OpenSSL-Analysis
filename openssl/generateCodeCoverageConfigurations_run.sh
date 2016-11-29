#!/bin/bash

path=$(cd "$(dirname "$0")"; pwd)

cd $1

$path/../../TypeChef/typechef.sh ${@:2}
$path/../../CSPLlift/lift.sh $2 --reuseAST --genCodeCovConfigs
