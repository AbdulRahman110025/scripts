backup_files="/home /etc /root /boot /opt"
dest="/mnt/backup"

date=$(date +%Y-%m-%d)
day=$(date +%A)
hostname=$(hostname -s)
archive_files="$hostname-$day-$date.tgz"

echo "backing up $backup_files to $dest/$archive_files"

tar czf $dest/$archive_files $backup_files

echo "backup completed"

ls -lh "$dest"