$contraseña = "1234"
$entrada = Read-Host "Introduce la contraseña"

while ($entrada -ne $contraseña) {
    $entrada = Read-Host "Contraseña incorrecta, inténtalo otra vez:"
}

Write-Host "Contraseña correcta, ¡acceso permitido!"