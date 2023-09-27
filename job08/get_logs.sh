
connection_number=$(grep "rija" /var/log/auth.log | wc -l)

date=$(date +%d-%m-%Y-%H:%m)

filename="number_connection-$date"

echo "$connection_number-$date"

echo "$connection_number : $date" > "$filename.tar"
