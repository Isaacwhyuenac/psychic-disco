#!/bin/bash

egrep "18/Aug/1995|20/Aug/1995" NASA_access_log_Aug95 | cut -d" " -f 1 | uniq -c | sort -nr | nl | head -n 10
# cat NASA_access_log_Aug95 |
# egrep "18/Aug/1995|20/Aug/1995" NASA_access_log_Aug95 | awk '{print $1}' | uniq -c | sort -nr | nl | head -n 10