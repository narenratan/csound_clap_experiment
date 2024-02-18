#!/bin/bash
g++ -shared -g -Wall -Wextra -Wno-unused-parameter -lcsound64 -fPIC -o ~/.clap/HelloCLAP.clap csound_clap.cpp

# Needs CLAP headers too - can get with:
# $ git clone https://github.com/free-audio/clap.git clap2
# $ mv clap2/include/clap clap
# $ rm -rf clap2
