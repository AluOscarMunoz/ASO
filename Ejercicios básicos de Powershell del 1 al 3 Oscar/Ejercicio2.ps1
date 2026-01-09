$a = [int](Read-Host "Introduce el primer número")
$b = [int](Read-Host "Introduce el segundo número")

Write-Host "Suma: $($a + $b)"
Write-Host "Resta: $($a - $b)"
Write-Host "Multiplicación: $($a * $b)"
Write-Host "División: $($a / $b)"
Write-Host "Residuo: $($a % $b)"