
var=$(date +"%d-%m-%y-%H%M%S")
log_file="log_$var.txt"
cp /home/ubuntu/log/log.txt "$log_file"

gzip -f "$log_file"
: > /home/ubuntu/log/log.txt
