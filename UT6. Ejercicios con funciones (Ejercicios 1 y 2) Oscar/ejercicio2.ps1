$usuarios = Import-Csv -Path "usuarios.csv"

foreach ($usuario in $usuarios) {
    Write-Host "$($usuario.Nombre), $($usuario.Apellidos), $($usuario.Grupo)"
}
