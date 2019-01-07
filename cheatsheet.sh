# Deploy lab
az group create -n lisplab -l westeurope
az group deployment create -g lisplab --template-uri https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/lisp_lab.json --parameters '{"admin":{"value":"Microsoft123!"}}'
