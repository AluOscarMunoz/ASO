$nombre = Read-Host "Cual es tu nombre: "
$cantidad = Read-Host "Cuantas veces quieres repetirlo?: "
for ($i = 0; $i -lt $cantidad; $i++){
    Write-Host $nombre
}
