#!/bin/bash

# With thanks for Inaki for emailing these steps. Run them eg in 'fedora:32'

# Step One: install Copr plugin
# (on my setup this step takes about 1m 8s)
dnf install -y 'dnf-command(copr)'

# Step Two: enable Copr repo
# (on my setup this step takes no time: about 0.5s)
dnf copr enable -y iucar/cran

# Step Three: install Inaki's R package: "installs a package of mine with no deps (to pull R and all the stuff)"
# (on my setup this step takes about 3m 9s)
dnf install -y R-CRAN-errors

# Step Four: install the tidyverse
# (on my setup this step takes about 38s)
time dnf install -y R-CRAN-tidyverse
