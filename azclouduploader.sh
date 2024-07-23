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

##### az login

echo
#información de cuenta de almacenamiento
read -p "Ingresa el nombre de la Cuenta de Almacenamiento: " storage_account_name
read -s -p "Ingresa tu Contraseña de almacenamiento: " storage_key
echo
echo "Revisando Cuenta de Almacenamiento" $storage_account_name

echo 

# mostrar containers en cuenta de almacenamiento
echo "estos son los containers disponibles en la cuenta de almacenamiento"

#######escript para containers
echo
read -p "Ingresa el nombre del container al que deseas subir el archivo: " container_name

echo "subiendo archivo..."

# Subir Azure Blob Storage
az storage blob upload \
  --account-name $storage_account_name \
  --account-key $storage_account_key \
  --container-name $container_name \
  --file $file_path