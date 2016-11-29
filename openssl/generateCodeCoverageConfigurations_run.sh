#!/bin/bash
#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis
#SBATCH --job-name=openssl__code
#SBATCH --get-user-env

path=$(pwd)

$pathi/../../TypeChef/typechef.sh $@
$pathi/../../CSPLlift/lift.sh $1 --reuseAST --genCodeCovConfigs
