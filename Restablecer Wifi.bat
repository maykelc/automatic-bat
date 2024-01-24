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
echo Pulse una tecla para continuar.
pause>nul
echo.
echo.
echo Mostrando el Contenido de la Memoria Cache de DNS.
ipconfig /displaydns
echo.
echo.
pause
echo ========================================================
echo ==                                                    ==
echo == Libera la direccion IPv4, IPv6 para el adaptador.  ==
echo ==                                                    ==
echo ========================================================
ipconfig /release
ipconfig /release6
echo.
echo.
echo.
echo =================================================
echo ==                                             ==
echo ==      Renueva la direccion IPv4, IPv6.       ==
echo ==                                             ==
echo =================================================
echo.
ipconfig /renew

echo.
echo.
echo.
echo.
echo ===================================================
echo ==                                               ==
echo ==     Purgando y volviendo a cargar la tabla    ==
echo ==     de nombres de la Cache Remota.            ==
echo ==                                               ==
echo ===================================================
echo.
nbtstat -R
echo.
echo.
echo ===================================================
echo ==                                               ==
echo ==     Enviando paquetes de Liberacion de        == 
echo ==        nombres a WINS y despues               ==
echo ==          Iniciar y Actualizar.                ==
echo ==                                               ==
echo ===================================================
echo.
nbtstat -RR
echo.
echo.
echo =================================================
echo ==                                             ==
echo ==     Purgando la memoria cache de DNS.       ==
echo ==                                             ==
echo =================================================
echo.
ipconfig /flushdns
echo.
echo.
echo ===================================================
echo ==                                               ==
echo ==     Actualiza todas las concesiones DHCP y    ==
echo ==     vuelve a registrar los nombres DNS.       ==
echo ==                                               ==
echo ===================================================
ipconfig /registerdns
echo.
echo.
ipconfig /displaydns
echo Pulse Tecla para continuar.
pause>nul
echo.
echo.
echo =======================
echo ==                   ==
echo ==  Realizando Ping. ==
echo ==                   ==
echo =======================
ping 8.8.8.8
echo.
echo.
echo Pulse una tecla para finalizar.
pause>nul
exit
