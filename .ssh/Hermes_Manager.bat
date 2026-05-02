@echo off
set KEY_PATH="C:\Users\enman\OneDrive\Documentos\Proyectos de Trabajo\Automatiza\.ssh\automatiza_agent_ed25519"
set SERVER=root@100.84.8.99

title Hermes Agent Terminal
mode con: cols=100 lines=30
color 0B

echo ======================================================
echo           HERMES: DIRECTOR DE OPERACIONES
echo ======================================================
echo.
echo Iniciando conexion segura por Tailscale...
echo Abriendo la Terminal Inteligente de Hermes...
echo.
echo (Para salir de Hermes escribe /exit o presiona Ctrl+C)
echo.

:: Conectamos por SSH forzando la creacion de una terminal interactiva (-t) y abrimos hermes directo
ssh -t -i %KEY_PATH% %SERVER% "hermes"

echo.
echo ======================================================
echo Sesion de Hermes finalizada. Desconectando...
timeout /t 3 >nul
exit
