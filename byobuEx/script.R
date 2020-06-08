#!/usr/bin/env Rscript
##
## Simple demo to 'run forever' and update a log file
##
## Dirk Eddelbuettel, June 2020, GPL-2 or later

logfile <- "/tmp/longRunningJob.log.txt"
if (file.exists(logfile)) unlink(logfile)

stopifnot(requireNamespace("fortunes", quietly=TRUE))
cat("*** Started. Watch '", logfile, "' for updates.\n")

nf <- 386  # from dim(read.fortunes())

while (TRUE) {
    now <- Sys.time()

    cat("[", format(now), "] ", file=logfile, append=TRUE)
    cat(paste(fortunes::fortune(sample(nf, 1)), collapse=" | "), "\n",
        file=logfile, append=TRUE)

    Sys.sleep(runif(1)*30)
}

cat("*** Done.")
