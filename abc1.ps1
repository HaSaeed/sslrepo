$CertShop = Get-ChildItem -Path Cert:\LocalMachine\My | where-Object {$_.subject -like "*new*"} | Select-Object -ExpandProperty Thumbprint
Get-item -Path "cert:\LocalMachine\My\$CertShop" | new-item -path IIS:\SslBindings\!443
