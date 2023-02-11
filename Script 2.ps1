# Pedir el nombre de la computadora

$computer = Read-Host "Ingrese el nombre de su computadora"

# Pedir el nombre de usuario

$username = Read-Host "Ingrese su nombre de usuario"

# Pedir la red a la que pertenece

$red = Read-Host "Ingrese la red a la que pertenece"

# Crear hashtable con la información recolectada

$output = @{
    "Nombre de la computadora" = $computer
    "Nombre de usuario" = $username
    "Red a la que pertenece" = $red
}

# Guardar la información recolectada en un archivo de texto
$output | Out-File -FilePath output.txt
