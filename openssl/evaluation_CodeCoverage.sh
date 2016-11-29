#!/bin/bash
#SBATCH -D /scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl
#SBATCH --job-name=openssl
#SBATCH -p chimaira
#SBATCH -A spl
#SBATCH --get-user-env
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=15360
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=janker@fim.uni-passau.de
#SBATCH --mem_bind=local
#SBATCH --output=/scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl/codeLog
#SBATCH --error=/scratch/janker/Masterarbeit/CSPLlift-OpenSSL-Analysis/openssl/codeErr
#SBATCH --time=24:00:00
#SBATCH --exclude=chimaira12,chimaira13,chimaira14,chimaira15,chimaira16,chimaira17


ABSPATH=$(pwd)

flags="$ABSPATH/../../CSPLlift-OpenSSL-Analysis/openssl/minimalAES.c \
--bdd --dimacsFeaturePrefix \"\" --featureModelDimacs $ABSPATH/../../CSPLlift-OpenSSL-Analysis/openssl/OpenSSL.dimacs \
--platfromHeader $ABSPATH/../../TypeChef-GNUCHeader/platform.h \
-I $ABSPATH/../../TypeChef-GNUCHeader/usr_include/ \
-I $ABSPATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu/4.8/include \
-I $ABSPATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu/4.8/include-fixed \
-I $ABSPATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu \
--openFeat $ABSPATH/../../TypeChef-GNUCHeader/openfeatures.txt \
-I $ABSPATH/../../CSPLlift-OpenSSL-Analysis/openssl/include \
--spllift taint --spllift evalcoverage --spllift callgraph --spllift printvariants \
--recordTiming --lexNoStdout \
--linkingInterface $ABSPATH/../../CSPLlift-OpenSSL-Analysis/openssl/CModuleInterface.interface"

$ABSPATH/../../CSPLlift/lift.sh $flags
