\# so-github-actions-labs



Repositorio para la clase de Sistemas Operativos I, enfocado en el uso de GitHub Actions, CI/CD, runners multi-OS, contenedores, automatización del sistema, seguridad, release y deploy.



---



Badges de Workflows



!\[CI](https://github.com/MoncadaMario/so-github-actions-labs/actions/workflows/ci.yml/badge.svg)

!\[CI Pipeline](https://github.com/MoncadaMario/so-github-actions-labs/actions/workflows/ci-pipeline.yml/badge.svg)

!\[Security Scan](https://github.com/MoncadaMario/so-github-actions-labs/actions/workflows/security-scan.yml/badge.svg)

!\[Release](https://github.com/MoncadaMario/so-github-actions-labs/actions/workflows/release.yml/badge.svg)

!\[Deploy](https://github.com/MoncadaMario/so-github-actions-labs/actions/workflows/deploy-vercel.yml/badge.svg)



---



Objetivo del Proyecto



Implementar un pipeline CI/CD completo que permita:



\- Comprender la arquitectura de runners en Linux, Windows y macOS

\- Automatizar tareas del sistema operativo (archivos, procesos, permisos)

\- Usar contenedores Docker en workflows

\- Ejecutar pruebas automatizadas

\- Analizar seguridad y dependencias

\- Generar releases automáticos

\- Simular un proceso de despliegue continuo



---



Estructura del Repositorio



so-github-actions-labs

├─ .github/workflows

│  ├─ multi-os-test.yml

│  ├─ docker-container-action.yml

│  ├─ system-automation.yml

│  ├─ ci.yml

│  ├─ ci-pipeline.yml

│  ├─ security-scan.yml

│  ├─ release.yml

│  └─ deploy-vercel.yml

├─ so-cicd-app

│  ├─ src

│  ├─ tools

│  ├─ tests

│  ├─ package.json

│  └─ system-log.txt

├─ Dockerfile

└─ README.md



