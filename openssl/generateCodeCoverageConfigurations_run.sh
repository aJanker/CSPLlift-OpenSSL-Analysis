#!/bin/bash
#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis
#SBATCH --job-name=openssl__code
#SBATCH --get-user-env

path=$(pwd)

$path/../../TypeChef/typechef.sh $@
$path/../../CSPLlift/lift.sh $1 --reuseAST --genCodeCovConfigs
