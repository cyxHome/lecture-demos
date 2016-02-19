tmp=$(cat frankenstein.txt | tr -cs "[:alpha:]" "\n" | sort | uniq -c | sort -r | tail -n 1 | awk '{print $1}');
cat frankenstein.txt | tr -cs "[:alpha:]" "\n" | sort | uniq -c | sort -r | awk -v x=$tmp '$1 = x' 

# awk -v x=$tmp '$1 = x'   import external variable $tmp, which is the min occurance of word