#!/bin/bash
  clear
  echo "Bienvenido al Instalador de Ngrok by CHRISD23"
  sleep 3
  echo ""
  echo "Detectando arquitectura espere...."
  sleep 3
  arq=$(dpkg --print-architecture)
  echo "Su arquitectura es ${arq}"
  url='https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
case $arq in
 'arm') echo "Descargando ngrok ARM"
      wget $url
       ;;
  'armhf') echo "Descargando ngrok ARMHF"
      wget $url
        ;;
   *) echo "Arquitectura desconocida"
        exit
        ;;
  esac
