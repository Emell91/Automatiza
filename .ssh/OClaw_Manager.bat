@echo off
set KEY_PATH="C:\Users\enman\OneDrive\Documentos\Proyectos de Trabajo\Automatiza\.ssh\automatiza_agent_ed25519"
set SERVER=root@100.84.8.99
set TOKEN=9fd2f5322e2c56ef5e6809c6f366da998723464bc2de98d2

title OClaw Manager
mode con: cols=60 lines=15
color 0B

echo ======================================================
echo           OCLAW: DIRECTOR DE OPERACIONES
echo ======================================================
echo.
echo [1/2] Abriendo Tunel Seguro...
:: Matamos cualquier tunel previo para evitar conflictos
taskkill /fi "windowtitle eq OClaw Tunnel" /f >nul 2>&1
start /min "OClaw Tunnel" ssh -N -L 18789:127.0.0.1:18789 -i %KEY_PATH% %SERVER%

echo [2/2] Abriendo Panel de Control en el navegador...
timeout /t 3 >nul
start http://localhost:18789/#token=%TOKEN%

echo.
echo ------------------------------------------------------
echo    AGENTE OCLAW: ONLINE (MODO PERSISTENTE)
echo ------------------------------------------------------
echo.
echo 🚀 El servidor se reiniciara solo si hay fallos.
echo 💡 No cierres esta ventana mientras uses la web.
echo.
echo Presiona cualquier tecla para desconectar el acceso...
pause >nul

:: Al cerrar, matamos el tunel para limpiar
taskkill /fi "windowtitle eq OClaw Tunnel" /f >nul 2>&1
exit
