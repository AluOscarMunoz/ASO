$num = 69
for ($i = 0; $i -ne $num;){
    $intento = Read-Host "Di que número crees que es "
    if ($intento -eq $num) {
        Write-Host "Enhorabuena!! Has acertado!!"
        break
    }
    elseif ($intento -gt $num) {
        Write-Host "Mal, el número que buscar es MENOR"
    }
    elseif ($intento -lt $num) {
        Write-Host "Mal, el número que buscar es MAYOR"
    }
}