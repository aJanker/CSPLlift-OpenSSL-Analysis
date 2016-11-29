#!/bin/bash
#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis
#SBATCH --job-name=openssl__code
#SBATCH --get-user-env

path=$(cd "$(dirname "$0")"; pwd)

$path/../../TypeChef/typechef.sh $@
$path/../../CSPLlift/lift.sh $1 --reuseAST --genCodeCovConfigs
