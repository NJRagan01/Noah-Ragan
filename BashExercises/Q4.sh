#!/bin/bash
echo "Current home directory: $(echo ~)"
echo "Current username: $(whoami)"
echo "Today is: $(date +%D)"
echo who |cut -c 1-9 |sort -u |wc -l