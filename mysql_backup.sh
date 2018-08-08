#!/bin/bash

# Database credentials
user=""
password=":"
host="localhost"
db_name=""

# Other options
backup_path="/home/elliot/Documents/"
date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
# I don't tend to use this.	
#find $backup_path/* -mtime +30 -exec rm {} \;