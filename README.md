# AZCloudUploader
AZCloudUploader es una herramienta basada en la línea de comando de Bash para subir archivos directamente a un Blob en Azure

# Descripción
Esta herramienta permite a los usuarios subir archivos a un Azure Blob Storage solo ingresando la información solicitada, sin la necesidad de ingresar de forma manual.

# Prerequisitos
Antes de utilizar esta herramienta, asegurate de contar con lo soguiente:
 * Shell de Bash (ambientes Linux o MacOS)
 * Tener instalada la herramienta CLI de Azure. Puedes instalarla utilizando las intrucciones desde https://learn.microsoft.com/es-es/cli/azure/install-azure-cli
 * Cuenta de Azure con permisos para administrar contenedores de Blob

   
# intalación
1- Clona el repositorio a tu equipo local:
https://github.com/SebaDiezV/AZCloudUploader.git

2- Ingresa al directorio del script:
cd AZCloudUploader

3- cambia los permisos para ejecutar el script
chmod +x AZCloudUploader.sh

# Uso 
1- Ejecutar el script indicando la ruta del archivo que va a subir
./AZCloudUploader.sh /path/to/file.txt

2- Seguir las indicaciones del script


