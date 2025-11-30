# Script de automatización para Windows (PowerShell)

$ErrorActionPreference = "Stop"  # cualquier error detiene el script

Write-Host "=== INICIO SCRIPT WINDOWS ==="

# 1. Usar variable de entorno
$envVar = $env:WIN_DEMO_VAR
if (-not $envVar) { $envVar = "no definida" }
Write-Host "Valor de WIN_DEMO_VAR: $envVar"

# 2. Crear carpeta de trabajo
$workDir = "windows-output"
New-Item -ItemType Directory -Path $workDir -Force | Out-Null

# 3. Escribir archivo
"Este archivo fue generado en Windows" | Out-File -FilePath "$workDir\info.txt" -Encoding UTF8

# 4. Cambiar permisos con icacls (dar permiso de lectura/escritura al usuario actual)
$user = "$env:USERNAME"
icacls "$workDir\info.txt" /grant "$user:(R,W)" | Out-Null

# 5. Crear proceso en segundo plano
Start-Job -ScriptBlock {
    Start-Sleep -Seconds 5
    "Proceso en background completado" | Out-File -FilePath "windows-output\background.log" -Encoding UTF8
} | Out-Null

# 6. Esperar a que terminen los jobs en background
Get-Job | Wait-Job | Receive-Job | Out-Null

Write-Host "=== FIN SCRIPT WINDOWS ==="
