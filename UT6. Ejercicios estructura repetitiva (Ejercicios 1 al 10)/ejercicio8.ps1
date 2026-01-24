$altura = [int](Read-Host "Introduce la altura del triángulo")

for ($i = 1; $i -le $altura; $i++) {
    for ($j = 0; $j -lt $i; $j++) {
        $num = 2*$i - 1 - 2*$j
        Write-Host -NoNewline "$num "
    }
    Write-Host ""
}
