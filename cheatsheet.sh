# Deploy lab
az group create -n lisplab -l westeurope
url=https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/lisp_lab.json
az group deployment create -g lisplab --template-uri $url --parameters '{"adminPassword":{"value":"Microsoft123!"}}'
