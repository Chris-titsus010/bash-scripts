#! bin/bash

sudo tee -a /etc/environment > /dev/null <<EOT
http_proxy=$(sudo -i printenv http_proxy)
https_proxy=$(sudo -i printenv https_proxy)
ftp_proxy=$(sudo -i printenv ftp_proxy)
EOT
