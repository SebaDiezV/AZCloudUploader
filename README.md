# AZCloudUploader
AZCloudUploader es una herramienta basada en la línea de comando de Bash para subir archivos directamente a un Blob en Azure

# Descripción
Esta herramienta permite a los usuarios subir archivos a un Azure Blob Storage solo ingresando la información solicitada, sin la necesidad de ingresar de forma manual.

# Prerequisitos
Antes de utilizar esta herramienta, asegurate de contar con lo soguiente:
 * Shell de Bash (ambientes Linux o MacOS)
 * Tener instalada la herramienta CLI de Azure. Puedes instalarla utilizando las intrucciones desde https://learn.microsoft.com/es-es/cli/azure/install-azure-cli
 * Cuenta de Azure con permisos para administrar contenedores de Blob

   
# instalación
1- Clona el repositorio a tu equipo local:
```bash
git clone https://github.com/SebaDiezV/AZCloudUploader.git
```
2- Ingresa al directorio del script:
```bash
cd AZCloudUploader
```
3- cambia los permisos para ejecutar el script
```bash
chmod +x azcloudUploader.sh
```
# Uso 
1- Ejecutar el script indicando la ruta del archivo que va a subir
```bash
./azclouduploader.sh /path/to/file.txt
```

2- Seguir las indicaciones del script


