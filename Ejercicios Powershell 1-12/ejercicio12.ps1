$tipo = Read-Host "¿Quieres pizza vegetariana? (si/no)"

if ($tipo -eq "si") {
    Write-Host "Ingredientes disponibles:"
    Write-Host "1. Pimiento"
    Write-Host "2. Tofu"
    $ingrediente = Read-Host "Elige un ingrediente"

    Write-Host "Pizza vegetariana con mozzarella, tomate y" $ingrediente
} else {
    Write-Host "Ingredientes disponibles:"
    Write-Host "1. Peperoni"
    Write-Host "2. Jamón"
    Write-Host "3. Salmón"
    $ingrediente = Read-Host "Elige un ingrediente"

    Write-Host "Pizza NO vegetariana con mozzarella, tomate y" $ingrediente
}
