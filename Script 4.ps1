# Sacar los servicios del .txt

$services = Get-Content -Path ~/m0r4a/workspace/servicios.txt.txt

# Recorrer cada servicio para obtener su estado

foreach ($service in $services) {

        # Se obtiene el estado
        
        $status = (Get-Service -Name $service).Status

        # Se muestra el estado en pantalla
        
        Write-Host "El servicio $service esta en estado: $status"
        
    }