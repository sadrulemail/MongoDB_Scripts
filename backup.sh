#!/bin/bash

sudo mongodump --db LearnMongoDB --port 27017 --out /var/mongobackups/`date +"%Y%m%d"`;

sudo find /var/mongobackups/ -mtime +10 -exec rm -rf {} \;