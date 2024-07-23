#!/bin/bash

#Este script es para subir archivos directamente a a Blob de Azure

#Archivo a subir
file_path=$1

echo 'Gracias por usar la herramienta AZCloudUploader by SDiezV'
echo
echo 'Versión actual: 1.1'
echo
echo 'Recuerda como paso previo tener instalado Azure CLI en tu dispositivo'
echo
echo 'inicia sesión en Azure para continuar'

#az_login

read -p "Ingresa el nombre de la Cuenta de Almacenamiento:" storage_account_name
read -p "Ingresa tu Contraseña de almacenamiento:" storage_key
echo
echo $storage_account_name
echo $1






