#!/bin/bash
#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl
#SBATCH --job-name=openssl__code
#SBATCH --output=/dev/null
#SBATCH --error=/dev/null
#SBATCH --get-user-env

path=$(pwd)  

$path/../../TypeChef/typechef.sh $@ > /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl/logfile
$path/../../CSPLlift/lift.sh $1 --reuseAST --genCodeCovConfigs
