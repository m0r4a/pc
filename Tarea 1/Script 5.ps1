$user = [Environment]::UserName
Get-NetTCPConnection -State Listen | Select-Object LocalAddress, LocalPort, OwningProcess | Out-File -FilePath "$user.txt"
