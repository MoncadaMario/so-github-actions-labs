#!/usr/bin/env bash
# Script de automatización para Linux

set -e  # si algún comando falla, el script termina con código de error

echo "=== INICIO SCRIPT LINUX ==="

# 1. Usar variable de entorno
echo "Valor de LINUX_DEMO_VAR: ${LINUX_DEMO_VAR:-no definida}"

# 2. Crear carpeta de trabajo
WORK_DIR="linux-output"
mkdir -p "$WORK_DIR"

# 3. Escribir archivo
echo "Este archivo fue generado en Linux" > "$WORK_DIR/info.txt"

# 4. Cambiar permisos del archivo
chmod 600 "$WORK_DIR/info.txt"

# 5. Crear proceso en segundo plano
(
  echo "Proceso en background - inicio" >> "$WORK_DIR/background.log"
  sleep 5
  echo "Proceso en background - fin" >> "$WORK_DIR/background.log"
) &

# 6. Esperar un poco para que el proceso en background haga algo
sleep 6

echo "=== FIN SCRIPT LINUX ==="
