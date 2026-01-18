$ruta = Read-Host "Introduce la ruta del fichero o carpeta"

if (Test-Path $ruta) {
    Write-Host "La ruta existe"
} else {
    Write-Host "La ruta NO existe"
}
