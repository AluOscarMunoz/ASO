$puntos = [double](Read-Host "Introduce tu puntuación")
$dinero = 2400 * $puntos

if ($puntos -eq 0.0) {
    Write-Host "Nivel: Inaceptable"
} elseif ($puntos -eq 0.4) {
    Write-Host "Nivel: Aceptable"
} elseif ($puntos -ge 0.6) {
    Write-Host "Nivel: Meritorio"
} else {
    Write-Host "Puntuación no válida"
}

Write-Host "Dinero recibido:" $dinero "€"
