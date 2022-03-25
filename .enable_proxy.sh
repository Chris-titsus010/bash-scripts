#! bin/bash

sed -i -r "s/((https?|ftp)_proxy)=\"\"/\1=\"$(sudo -i printenv http_proxy)\"/g" "test2.txt"

exit 0
