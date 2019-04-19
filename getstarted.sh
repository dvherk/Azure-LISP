# Deploy lab
url=https://raw.githubusercontent.com/dvherk/Azure-LISP/master/lisp_lab_iterate_through_vnet.json

rg=LISPdemo
az group create -n $rg -l westeurope
az group deployment create -g $rg --template-uri $url --parameters '{"adminPassword":{"value":"Msft123Msft123"}}'

# Check Public IP addresses
az network public-ip list -g $rg --query [].[name,ipAddress] -o tsv

# Cleanup
#az group delete -n $rg -y --no-wait
