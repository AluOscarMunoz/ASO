$num = Read-Host "Dime un numero para hacer su tabla: "
for ($i = 0; $i -le 10; $i++) {
    Write-Host $num "x" $i "=" ($num * $i)

}