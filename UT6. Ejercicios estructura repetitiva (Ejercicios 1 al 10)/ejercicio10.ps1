do {
    Write-Host "----- Menú -----"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"

    $opcion = Read-Host "Selecciona una opción"

    switch ($opcion) {
        "a" {
            $nombre = Read-Host "Nombre de la carpeta a crear"
            New-Item -ItemType Directory -Name $nombre
        }
        "b" {
            $nombre = Read-Host "Nombre del fichero a crear"
            New-Item -ItemType File -Name $nombre
        }
        "c" {
            $viejo = Read-Host "Nombre actual"
            $nuevo = Read-Host "Nuevo nombre"
            Rename-Item -Path $viejo -NewName $nuevo
        }
        "d" {
            $nombre = Read-Host "Nombre del archivo o carpeta a borrar"
            Remove-Item -Path $nombre -Recurse -Force
        }
        "e" {
            $nombre = Read-Host "Nombre del archivo o carpeta a verificar"
            if (Test-Path $nombre) {
                Write-Host "$nombre existe."
            } else {
                Write-Host "$nombre NO existe."
            }
        }
        "f" {
            $ruta = Read-Host "Introduce la ruta del directorio"
            Get-ChildItem -Path $ruta
        }
        "g" {
            Get-Date
        }
        "x" {
            Write-Host "Saliendo..."
        }
        default {
            Write-Host "Opción no válida"
        }
    }

    Write-Host ""
} while ($opcion -ne "x")
