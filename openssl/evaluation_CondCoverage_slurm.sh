#!/bin/sh

PATH=$(pwd)

flags="$PATH/../../TypeChef-Sampling-OpenSSL/openssl/minimalAES.c \
--bdd --dimacsFeaturePrefix \"\" --featureModelDimacs $PATH/../../TypeChef-Sampling-OpenSSL/openssl/OpenSSL.dimacs \
--platfromHeader $PATH/../../TypeChef-GNUCHeader/platform.h \
-I $PATH/../../TypeChef-GNUCHeader/usr_include/ \
-I $PATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu/4.8/include \
-I $PATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu/4.8/include-fixed \
-I $PATH/../../TypeChef-GNUCHeader/x86_64-linux-gnu \
--openFeat $PATH/../../TypeChef-GNUCHeader/openfeatures.txt \
-I $PATH/../../TypeChef-Sampling-OpenSSL/openssl/include \
--spllift taint  --spllift evalsingle --spllift callgraph --spllift printvariants \
--recordTiming --lexNoStdout \
--linkingInterface $PATH/../../TypeChef-Sampling-OpenSSL/openssl/CModuleInterface.interface"

sbatch -p chimaira  -A spl -n 1 -c 4 --mem=15360 --time=24:00:00  --mem_bind=local --output=$PATH/condLog --error=$PATH/condErrLog $PATH/../../CSPLlift/lift.sh $flags
