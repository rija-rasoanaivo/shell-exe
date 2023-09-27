cd /home/rija/shell-exe/job08

connection_number=$(grep "rija" /var/log/auth.log | wc -l)

date=$(date +%d-%m-%Y-%H:%M)

filename="number_connection-$date"

echo "$connection_number : $date" > "$filename"

sudo tar -cvf archive.tar "$filename"

mv archive.tar "$filename.tar"

mv "$filename" "$filename.tar" /home/rija/shell-exe/job08/Backup
