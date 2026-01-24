[int]$num = Read-Host "Dime un número entero positivo: "
for ($i = 0; $i -le $num; $i++) {
    if ($i % 2 -eq 1) {
    Write-Host $i
    }
}
