$rutaBase = "C:\Empresa_users"
$usuarios = @("usuario1","usuario2")

New-Item -ItemType Directory -Path $rutaBase -Force

foreach ($u in $usuarios) {
    $rutaUsuario = "$rutaBase\$u"
    New-Item -ItemType Directory -Path $rutaUsuario -Force

    $acl = Get-Acl $rutaUsuario
    $acl.SetAccessRuleProtection($true, $false)

    $permiso = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $u, "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow"
    )

    $acl.SetAccessRule($permiso)
    Set-Acl $rutaUsuario $acl
}

New-SmbShare -Name "Empresa_users$" -Path $rutaBase -FullAccess "Administradores"
