$ruta = Read-Host "Introduce una ruta"

if (Test-Path $ruta) {
    if ((Get-Item $ruta).PSIsContainer) {
        Write-Host "Es un directorio. Contenido:"
        Get-ChildItem $ruta -Recurse
    } else {
        Write-Host "No es un directorio"
    }
} else {
    Write-Host "La ruta no existe"
}
