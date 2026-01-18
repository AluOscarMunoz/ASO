$contraseña = "password123"
$entrada = Read-Host "Introduce la contraseña"

if ($entrada.ToLower() -eq $contraseña.ToLower()) {
    Write-Host "Contraseña correcta"
} else {
    Write-Host "Contraseña incorrecta"
}
