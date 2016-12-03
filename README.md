# IFDS Analysis of OpenSSL

Contains various scripts to run static IFDS data-flow analysis and sampling strategies with [CSPLlift](https://github.com/aJanker/CSPLlift) on OpenSSL.

The setup requires multiple steps. Contact me if there are any issues.

## Setup & Source code

The requiered source code is already included in this case study. 
In case your operating system does not offer the requiered C system headers, you can find the used headers for our evaluation [here](https://github.com/aJanker/TypeChef-GNUCHeader).

## How to run the analysis

To run the analysis on OpenSSL we have to perform to follow steps exactly in the described order:

Extract configurations for code-coverage sampling (optional):

    cd openssl
    ./generateCodeCoverageConfigurations.sh
    
Generate global linking map:

    cd openssl
    ./generateASTs.sh
    ./generateLinkingInterface.sh
    
To run the affected-product coverage analysis:

    cd openssl
    ./evaluation_CondCoverage.sh
    
To run the code coverage analysis:
    
    cd openssl
    ./evaluation_CodeCoverage.sh
