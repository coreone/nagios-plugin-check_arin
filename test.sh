#!/bin/sh
if [ ! -e utils.sh ]; then
    cat > utils.sh <<-EOF
    STATE_OK=0
    STATE_WARNING=1
    STATE_CRITICAL=2
    STATE_UNKNOWN=3
    STATE_DEPENDENT=4
EOF
fi

domains="
amazon.ca
amazon.com
amazon.co.uk
amazon.ie
imo.im
filecloud.io
slideshare.net
wikipedia.org
delfi.ee
delfi.tv
mail.ru
mit.edu
"

for domain in $domains; do
    ./check_arin -d $domain
done
