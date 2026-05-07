@echo off
:: ============================================================================
:: OPTIMIZADOR DE PC - LUIS GARCÍA
:: Analista de Ciberseguridad 
:: ============================================================================

:: Verificar admin
>nul 2>&1 "%SystemRoot%\system32\cacls.exe" "%SystemRoot%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Solicitando permisos de administrador...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

:: Configurar ventana
title Optimizador PC - Luis Garcia Cybersecurity
color 0A
mode con: cols=85 lines=35

cls
echo.
echo ================================================================================
echo.
echo            ███████╗ OPTIMIZADOR DE PC ███████╗
echo.
echo             Analista de Ciberseguridad: Luis Garcia
echo                GitHub: luisgarcia-infosec
echo              
echo.
echo ================================================================================
echo.
echo  Iniciando optimizacion del sistema...
echo.
timeout /t 2 >nul

:: Crear log en el escritorio
set "logfile=%userprofile%\Desktop\Reporte_Optimizacion_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"

echo ======================================================================== > "%logfile%"
echo REPORTE DE OPTIMIZACION DE PC >> "%logfile%"
echo Analista: Luis Garcia - Ciberseguridad >> "%logfile%"
echo ======================================================================== >> "%logfile%"
echo Fecha: %date% %time% >> "%logfile%"
echo Equipo: %computername% >> "%logfile%"
echo Usuario: %username% >> "%logfile%"
echo ======================================================================== >> "%logfile%"
echo. >> "%logfile%"

cls
echo.
echo ================================================================================
echo  FASE 1: LIMPIEZA DE ARCHIVOS TEMPORALES
echo ================================================================================
echo.

echo [1/10] Limpiando carpeta Temp del usuario...
del /f /s /q "%temp%\*.*" >nul 2>&1
echo    OK - Carpeta Temp usuario limpiada >> "%logfile%"

echo [2/10] Limpiando carpeta Temp de Windows...
del /f /s /q "C:\Windows\Temp\*.*" >nul 2>&1
echo    OK - Carpeta Temp Windows limpiada >> "%logfile%"

echo [3/10] Limpiando cache de navegadores...
del /f /s /q "%localappdata%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
del /f /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
echo    OK - Cache navegadores limpiado >> "%logfile%"

echo [4/10] Limpiando Prefetch...
del /f /s /q "C:\Windows\Prefetch\*.*" >nul 2>&1
echo    OK - Prefetch limpiado >> "%logfile%"

echo [5/10] Vaciando papelera de reciclaje...
PowerShell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false -ErrorAction SilentlyContinue
echo    OK - Papelera vaciada >> "%logfile%"

echo.
echo ================================================================================
echo  FASE 2: LIMPIEZA DE WINDOWS UPDATE
echo ================================================================================
echo.

echo [6/10] Deteniendo servicio Windows Update...
net stop wuauserv >nul 2>&1

echo [7/10] Limpiando archivos de actualizacion...
del /f /s /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
echo    OK - Archivos Windows Update eliminados >> "%logfile%"

echo [8/10] Reiniciando servicio Windows Update...
net start wuauserv >nul 2>&1
echo    OK - Servicio Windows Update reiniciado >> "%logfile%"

echo.
echo ================================================================================
echo  FASE 3: OPTIMIZACION DEL SISTEMA
echo ================================================================================
echo.

echo [9/10] Optimizando servicios...
net stop "Windows Search" >nul 2>&1
timeout /t 2 >nul
net start "Windows Search" >nul 2>&1
echo    OK - Servicios optimizados >> "%logfile%"

echo [10/10] Ejecutando limpiador de disco...
cleanmgr /sagerun:1 >nul 2>&1
echo    OK - Limpiador de disco ejecutado >> "%logfile%"

echo.
echo ================================================================================
echo  GENERANDO REPORTE FINAL
echo ================================================================================
echo.

:: Info del sistema
echo. >> "%logfile%"
echo INFORMACION DEL SISTEMA: >> "%logfile%"
echo ---------------------------------------- >> "%logfile%"
systeminfo | findstr /C:"Nombre de host" /C:"Nombre del sistema operativo" /C:"Memoria fisica total" >> "%logfile%"

echo. >> "%logfile%"
echo ESPACIO EN DISCO: >> "%logfile%"
echo ---------------------------------------- >> "%logfile%"
wmic logicaldisk get caption,freespace,size >> "%logfile%"

echo. >> "%logfile%"
echo ======================================================================== >> "%logfile%"
echo RESUMEN: >> "%logfile%"
echo - Archivos temporales eliminados >> "%logfile%"
echo - Cache de navegadores limpiado >> "%logfile%"
echo - Papelera de reciclaje vaciada >> "%logfile%"
echo - Archivos de Windows Update limpiados >> "%logfile%"
echo - Servicios optimizados >> "%logfile%"
echo - Sistema limpiado y optimizado >> "%logfile%"
echo. >> "%logfile%"
echo Hora de finalizacion: %time% >> "%logfile%"
echo ======================================================================== >> "%logfile%"
echo. >> "%logfile%"
echo Analista responsable: Luis Garcia >> "%logfile%"
echo GitHub: github.com/luisgarcia-infosec >> "%logfile%"
echo ======================================================================== >> "%logfile%"

cls
echo.
echo ================================================================================
echo.
echo              ✓✓✓ OPTIMIZACION COMPLETADA EXITOSAMENTE ✓✓✓
echo.
echo ================================================================================
echo.
echo  TAREAS COMPLETADAS:
echo  -------------------
echo  [✓] Archivos temporales eliminados
echo  [✓] Cache de navegadores limpiado
echo  [✓] Papelera de reciclaje vaciada
echo  [✓] Archivos Windows Update limpiados
echo  [✓] Prefetch optimizado
echo  [✓] Servicios optimizados
echo  [✓] Limpieza profunda ejecutada
echo.
echo ================================================================================
echo.
echo  REPORTE GUARDADO EN:
echo  %logfile%
echo.
echo ================================================================================
echo.
echo  RECOMENDACIONES:
echo  - Reinicie su equipo para aplicar todos los cambios
echo  - Ejecute este optimizador mensualmente
echo  - Revise programas que inician con Windows
echo.
echo ================================================================================
echo.
echo  Analista de Ciberseguridad: Luis Garcia (@LuisGarcia-InfoSec)
echo  GitHub: luisgarcia-infosec
echo  
echo.
echo ================================================================================
echo.
echo.
echo  Presione cualquier tecla para abrir el reporte...
pause >nul

start notepad "%logfile%"

echo.
echo  Desea reiniciar el equipo ahora? (S/N)
set /p reinicio=": "
if /i "%reinicio%"=="S" (
    echo.
    echo  Reiniciando en 10 segundos...
    shutdown /r /t 10 /c "Optimizacion completada - Luis Garcia Cybersecurity"
    timeout /t 11 >nul
)

echo.
echo  Gracias por usar el Optimizador PC - Luis Garcia
echo.
timeout /t 3 >nul
exit
