# Remove files in cwd that are older than 30 days

find . -type f -name $USER -mtime +30 -exec rm {}\; 2> /dev/null
# or
find . -mtime +30 -exec rm {};

# As -exec rm -f {} can be inefficient because it will execute a new rm process for each file, you can use find's -delete argument:
find . -type f -mtime +30 -delete
