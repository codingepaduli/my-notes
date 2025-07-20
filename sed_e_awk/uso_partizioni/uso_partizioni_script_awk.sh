#!/bin/bash
echo -e "\t Questo script fa uso del file script.awk"
df | awk -f script.awk

