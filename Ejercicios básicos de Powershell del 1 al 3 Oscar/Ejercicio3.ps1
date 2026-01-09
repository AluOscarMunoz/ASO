$hora = [float](Read-Host "Horas trabajadas: ")
$precio = [float](Read-Host "Coste por horas: ")

Write-Host "Tu salario es $($hora * $precio)"