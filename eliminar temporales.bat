@echo off
echo.
echo ======================================================================
echo ==                                                                  ==
echo ==                Solucion Restablecer Conexion Wi-Fi.              ==
echo ==                         por Maykel C.                            ==
echo ==                                                                  ==
echo ==                         @Copyright.                              ==
echo ======================================================================
echo.
echo.
echo.
echo Se Eliminaran los archivos temporales.
echo Pulse una tecla para continuar.
pause>nul
echo.
echo.
echo Eliminando Archivos Temporales!!
echo Por Favor Espere...
echo.
echo.
echo.
del C:\Users\%username%\AppData\Local\Temp /f /s /q
rd C:\Users\%username%\AppData\Local\Temp /s /q
del c:\Windows\Temp /f /s /q
rd c:\Windows\Temp /s /q
cls
echo.
echo.
echo.
echo Archivos Temporales Eliminados!! 
echo.
echo.
pause
exit