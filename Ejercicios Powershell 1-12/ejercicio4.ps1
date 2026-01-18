Write-Host "****** CALCULADORA ******"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"

$opcion = Read-Host "Elige una opción"
$num1 = [int](Read-Host "Introduce el primer número")
$num2 = [int](Read-Host "Introduce el segundo número")

if ($opcion -eq 1) {
    Write-Host "Resultado:" ($num1 + $num2)
} elseif ($opcion -eq 2) {
    Write-Host "Resultado:" ($num1 - $num2)
} elseif ($opcion -eq 3) {
    Write-Host "Resultado:" ($num1 * $num2)
} elseif ($opcion -eq 4) {
    Write-Host "Resultado:" ($num1 / $num2)
} else {
    Write-Host "Opción no válida"
}
