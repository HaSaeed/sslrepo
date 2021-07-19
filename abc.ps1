Get-Item IIS:\SslBindings\*!443 | Remove-Item
$CertShop = Get-ChildItem -Path Cert:\LocalMachine\My | where-Object {$_.subject -like "*new*"} | Select-Object -ExpandProperty Thumbprint
Remove-Item -Path cert:\LocalMachine\My\$CertShop
