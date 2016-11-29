#!/bin/bash

#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl
#SBATCH --job-name=openssl__code
#SBATCH --output=/dev/null
#SBATCH --error=/dev/null
#SBATCH --get-user-env


path=$(pwd)

cd $1

$path/../../TypeChef/typechef.sh ${@:2}
$path/../../CSPLlift/lift.sh $2 --reuseAST --genCodeCovConfigs
