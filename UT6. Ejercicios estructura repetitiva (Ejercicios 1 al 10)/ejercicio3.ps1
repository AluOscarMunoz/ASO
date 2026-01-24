[int]$num = Read-Host "Dime un número entero positivo: "
for ($i = $num; $i -ge 0; $i--) {
    Write-Host $i
}
