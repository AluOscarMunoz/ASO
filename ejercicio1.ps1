$departamentos = Import-Csv "C:\Users\Administrador\Downloads\archivos\departamentos.csv" -Delimiter ";"
$empleados = Import-Csv "C:\Users\Administrador\Downloads\archivos\empleados.csv" -Delimiter ";"

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local" -ErrorAction SilentlyContinue

foreach ($d in $departamentos) {
    New-ADOrganizationalUnit -Name $d.Departamento -Path "OU=Empresa,DC=empresa,DC=local" -ErrorAction SilentlyContinue
    New-ADGroup -Name "$($d.Departamento)" -GroupScope Global -Path "OU=$($d.Departamento),OU=Empresa,DC=empresa,DC=local" -ErrorAction SilentlyContinue
}

foreach ($e in $empleados) {
    $u = "$($e.Nombre.ToLower()).$($e.Apellido.ToLower())"
    New-ADUser -Name "$($e.Nombre) $($e.Apellido)" -SamAccountName $u -UserPrincipalName "$u@empresa.local" -Path "OU=$($e.Departamento),OU=Empresa,DC=empresa,DC=local" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) -Enabled $true -ChangePasswordAtLogon $true -ErrorAction SilentlyContinue
    Add-ADGroupMember -Identity "$($e.Departamento)" -Members $u -ErrorAction SilentlyContinue
}