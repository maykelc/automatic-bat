# Scripts de Solución de Conexión Wi-Fi y Eliminación de Archivos Temporales

Este repositorio contiene dos scripts BATCH diseñados para restablecer la conexión Wi-Fi y eliminar archivos temporales en sistemas Windows.

Advertencias
Conexiones VPN y Proxy: Si estás utilizando una VPN o un proxy de pago, el script Restablecer_Conexion_WiFi.bat puede interrumpir estas conexiones al liberar y renovar las direcciones IP. Es posible que necesites reconectarte a tu VPN o proxy después de ejecutar el script.
Privilegios de Administrador: Algunos comandos pueden requerir privilegios de administrador para ejecutarse correctamente. Asegúrate de ejecutar los scripts con los permisos necesarios.


Impacto en Usuarios de VPN y Proxy
Conexiones VPN y Proxy: Este script puede interrumpir las conexiones VPN o proxy al liberar y renovar las direcciones IP. Los usuarios pueden necesitar reconectarse a su VPN o proxy después de ejecutar el script.

## Script 1: Restablecer_Conexion_WiFi.bat

Este script realiza varias funciones para solucionar problemas comunes de red. A continuación, se detallan las funciones y sus descripciones:

Mostrar el contenido de la memoria caché de DNS:
```
ipconfig /displaydns
```
Descripción: Muestra las entradas actuales en la caché DNS.
Utilidad: Permite ver las entradas actuales en la caché DNS, lo que puede ayudar a diagnosticar problemas de resolución de nombres de dominio.

Liberar la dirección IP (IPv4 e IPv6):
```
ipconfig /release
ipconfig /release6
```
Descripción: Libera las direcciones IP asignadas.
Impacto: Si estás utilizando una VPN o proxy, estas conexiones se interrumpirán.
Utilidad: Libera las direcciones IP actuales, lo cual puede ser necesario si hay conflictos de IP o problemas de conectividad.

Renovar la dirección IP (IPv4 e IPv6):
```
ipconfig /renew
```
Descripción: Solicita nuevas direcciones IP para los adaptadores de red.
Impacto: Las conexiones VPN o proxy se restablecerán con nuevas direcciones IP.
Utilidad: Obtiene nuevas direcciones IP del servidor DHCP, resolviendo problemas de conectividad relacionados con direcciones IP caducadas o incorrectas.

Purgar y volver a cargar la tabla de nombres de la caché remota:
```
nbtstat -R
```
Descripción: Limpia y vuelve a cargar la tabla de nombres de la caché NetBIOS.
Utilidad: Limpia y vuelve a cargar la tabla de nombres NetBIOS, lo cual puede ayudar a resolver problemas de conectividad en redes locales.

Enviar paquetes de liberación de nombres a WINS y después iniciar y actualizar:
```
nbtstat -RR
```
Descripción: Envía paquetes de liberación de nombres y actualiza la información NetBIOS.
Utilidad: Actualiza la información NetBIOS en la red, lo que puede solucionar problemas de nombres en redes locales.

Purgar la memoria caché de DNS:
```
ipconfig /flushdns
```
Descripción: Limpia la caché de DNS.
Utilidad: Limpia la caché DNS, resolviendo problemas de resolución de nombres causados por entradas DNS obsoletas o incorrectas.

Actualizar todas las concesiones DHCP y volver a registrar los nombres DNS:
``` ipconfig /registerdns ```
Descripción: Renueva las concesiones DHCP y vuelve a registrar los nombres DNS.
Impacto: Las conexiones VPN o proxy pueden necesitar ser reiniciadas.
Utilidad: Renueva las concesiones DHCP y vuelve a registrar los nombres DNS, asegurando que el equipo tenga las configuraciones más recientes.

Realizar un ping a un servidor público (Google DNS):
```ping 8.8.8.8```
Descripción: Verifica la conectividad a Internet.
Utilidad: Verifica la conectividad a Internet mediante un ping a un servidor confiable.



Script 2: Eliminar_Archivos_Temporales.bat
Este script elimina archivos temporales del sistema para liberar espacio en disco y mejorar el rendimiento. A continuación, se detallan las funciones y sus descripciones:

Eliminar archivos temporales del usuario actual:
```
del C:\Users\%username%\AppData\Local\Temp /f /s /q
rd C:\Users\%username%\AppData\Local\Temp /s /q
```
Descripción: Elimina todos los archivos en el directorio temporal del usuario.
Utilidad: Elimina todos los archivos temporales en el directorio del usuario, liberando espacio en disco y eliminando archivos innecesarios.

Eliminar archivos temporales del sistema:
```
del c:\Windows\Temp /f /s /q
rd c:\Windows\Temp /s /q
```
Descripción: Elimina todos los archivos en el directorio temporal del sistema.
Utilidad: Elimina todos los archivos temporales en el directorio del sistema, mejorando el rendimiento y liberando espacio en disco.



Por favor, utiliza estos scripts con precaución y asegúrate de comprender los cambios que realizarán en tu sistema.



Este README.md proporciona una descripción clara de cada función de los scripts, las acciones que realizan y el impacto potencial, especialmente en usuarios de VPN o proxy.
