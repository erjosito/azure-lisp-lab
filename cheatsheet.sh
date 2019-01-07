# Deploy lab
url=https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/lisp_lab.json
rg=lisplab
az group create -n $rg -l westeurope
az group deployment create -g $rg --template-uri $url --parameters '{"adminPassword":{"value":"Microsoft123!"}}'

# Check Public IP addresses
az network public-ip list -g $rg --query [].[name,ipAddress] -o tsv

# Cleanup
az group delete -n $rg -y --no-wait