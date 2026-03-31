#!/bin/bash

# 1. Top 10 highest temperatures

sort -t ',' -k3 -nur raw_data/satelite_temperature_data.csv | head -n 10 > analyzed_data/highest_temp.csv

# 2. Lesotho data sorted by humidity

grep "Lesotho" raw_data/satelite_temperature_data.csv | sort -t ',' -k4 -nr > analyzed_data/humidity_data_Lesotho.csv

# Push to GitHub
git add .
git commit -m "Added analyzed data results"
git push

