#!/bin/bash

#Este script es para subir archivos directamente Blob de Azure

#Archivo a subir
file_path=$1

echo 'Gracias por usar la herramienta AZCloudUploader by SDiezV'
echo
echo 'Versión actual: 1.1'
echo
echo 'Recuerda como paso previo tener instalado Azure CLI en tu dispositivo'
echo
echo 'inicia sesión en Azure para continuar'

az login

echo
#información de cuenta de almacenamiento
check_storage() {
  local storage_exists=false
  until [[ "$storage_exists" = true ]]; do
    read -p "Ingresa el nombre de la Cuenta de Almacenamiento: " storage_account_name
    read -s -p "Ingresa tu Contraseña de Almacenamiento: " storage_accountkey
    echo
    echo "Revisando Cuenta de Almacenamiento $storage_account_name"
    storage_check=$( az storage account check-name --name $storage_account_name --query nameAvailable)
    if [[ "$storage_check" != "$storage_exists"]]; then
      storage_exists=true
      echo "Existe la cuenta de almacenamiento"
      break
    else
      echo "la cuenta de almacenamiento no existe, por favor vuleve a ingresar la información"
      continue
    fi
  done
  }

echo 

#mostrar containers en cuenta de almacenamiento
echo "estos son los containers disponibles en la cuenta de almacenamiento"

#Mostrar containers
show_containers() {
  containers_array=($( az storage container list --account-name $storage_account_name --account-key $storage_account_key --query "[].{name:name}" --output tsv | head))
  for i in "${containers_array[@]}"
  do
    echo "$i"
  done
}

echo
check_container() {
  local container_exists=false
  while [[ "$container_exists" = false ]]; do
    read -p "Ingresa el nombre del container al que deseas subir el archivo: " container_name
    for j in "${containers_array[@]}"
        do
            if [[ "$container_name" == "$j" ]]; then
                container_exists=true
                echo "Container correcto, subiendo archivo..."
                break
            else
                continue
            fi
        done
    done
echo


# Subir Azure Blob Storage
az storage blob upload \
  --account-name $storage_account_name \
  --account-key $storage_account_key \
  --container-name $container_name \
  --file $file_path

# Revisar si subida fue exitosa
if [ $? -eq 0 ]; then
  echo "El archivo se subió correctamente a Azure Blob Storage"
else
  echo "Error: Subir archivo a Azure Blob Storage Falló"
fi

check_storage
show_containers  
check_container
