#!/bin/bash

## this assumes we run as root, so run the script under sudo or use sudo on each command here
##
## this script runs inside the _pre-made_ rocker/r-rspm:18.04 container so the RSPM backend
## is already setup

## Step One: use littler wrapper 'install.r' to call install.packages() for us
install.r tidyverse

## alternatively, in R, say   install.packages("tidyverse")
##
## note, though, that RSPM is _not_ connected to the system package manager so some
## system level libraries may be missing -- here we already loaded libxm2 to ensure
## tidyverse and its sub-packages can be loaded; for other packages other libraries
## may be needed.  our (nascent) chshshli package tries to help here.
