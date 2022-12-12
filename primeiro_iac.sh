#!/bin/bash

echo "//---Criando diretórios---//"
mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "//---Vamos criar os Grupos---//"
groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "//---Criando os Usuários---//"
useradd carlosjr -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_ADM
useradd mariana -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_ADM
useradd pedro -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_SEC

useradd debora -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd !ultra01) -G GRP_VEN

echo "//---Definindo permissões dos diretórios---//"
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "---Script--finalizado---"
