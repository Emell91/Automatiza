@echo off
set KEY_PATH="C:\Users\enman\OneDrive\Documentos\Proyectos de Trabajo\Automatiza\.ssh\automatiza_agent_ed25519"
set SERVER=root@100.84.8.99

title Hermes Agent - Asistente de Configuracion
mode con: cols=100 lines=30
color 0E

echo ======================================================
echo           HERMES: CONFIGURACION INICIAL
echo ======================================================
echo.
echo Conectando de forma segura al VPS...
echo Lanzando el Setup interactivo de Hermes...
echo.
echo Por favor, sigue las instrucciones en pantalla para
echo configurar los modelos y tu Workspace.
echo.

:: Conectamos por SSH forzando la creacion de una terminal interactiva (-t) y abrimos 'hermes setup' directo
ssh -t -i %KEY_PATH% %SERVER% "hermes setup"

echo.
echo ======================================================
echo Configuracion finalizada. Desconectando...
timeout /t 3 >nul
exit
