#!/bin/bash

## this assumes we run as root, so run the script under sudo or use sudo on each command here
##
## for more details on this consult https://cloud.r-project.org/bin/linux/ubuntu/README.html

## Step One: turn of interactive install, affects only one question for default timezone
export DEBIAN_FRONTEND=noninteractive

## Step Two:  update listings and install helper for PPAs
apt update && apt install -y software-properties-common

## Step Three: add 'c2d4u' ie the 'cran2deb4ubuntu' PPA, using the the R 4.0 variant
add-apt-repository -y ppa:c2d4u.team/c2d4u4.0+

## Step Four: also install R itself via CRAN mirror: add apt entry and key
## note we select Ubuntu 20.04 (aka "focal") here, adjust for other releases
echo "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" > /etc/apt/sources.list.d/cran.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

## Step Five: update listing again and install e.g. tidyverse which will also install R itself
apt update && apt install -y r-cran-tidyverse
