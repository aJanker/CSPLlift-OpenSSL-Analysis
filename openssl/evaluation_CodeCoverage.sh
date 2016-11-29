#!/bin/bash


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
