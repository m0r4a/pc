# Creamos los arreglos
$months = "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
$nums = "01","02","03","04","05","06","07","08","09","10","11","12"

# Pedimos una fecha
$date = Read-Host "Por favor, ingresa una fecha en el formato Dia/Mes/Año"

# Separamos la fecha en día, mes y año y utilizamos / como separador

$day, $month, $year = $date -split '/'

# Convertimos el mes a mayúsculas para que no importen las mayúsculas o minusculas

$month = $month.ToUpper()

# Buscamos si el mes ingresado está en el primer arreglo

$indice = [array]::IndexOf($months, $month)

# Si encontramos el mes, reemplazamos la variable $month con lo que tenga $nums en la posición que hayamos conseguido arriba

if ($indice -ge 0) {
    $month = $nums[$indice]
}

# Concatenamos el día, mes y año para formar la fecha final
$date = "{0}/{1}/{2}" -f $day, $month, $year

# Imprimimos la fecha actualizada
Write-Host "Fecha sustituida: $date"
