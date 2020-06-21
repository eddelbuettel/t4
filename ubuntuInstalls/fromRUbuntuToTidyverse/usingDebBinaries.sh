#!/bin/bash

## this assumes we run as root, so run the script under sudo or use sudo on each command here
##
## this script runs inside the _pre-made_ rocker/r-ubuntu:20.04 container so the previous
## steps one to four are already taken care of

## Step One: update listing and install e.g. tidyverse which will also install R itself
apt update && apt install -y r-cran-tidyverse
