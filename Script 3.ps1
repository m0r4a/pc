# Se obtienen los servicios detenidos

$stoppedServices = Get-Service | Where-Object {$_.Status -eq "Stopped"}

# Guarda el resultados en un archivo .txt

$stoppedServices | Out-File -FilePath stoppedServices.txt

# Se confirma la ejecución

Write-Host "Se han guardado los servicios detenidos en stoppedServices.txt"

