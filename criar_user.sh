#!/bin/bash

echo "Criando usuários para sistema!!!"

useradd aluno10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd aluno123)
passwd aluno10 -e

useradd aluno11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd aluno123)
passwd aluno11 -e

useradd aluno12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd aluno123)
passwd aluno12 -e

useradd aluno13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd aluno123)
passwd aluno13 -e

echo "Usuários criados com sucesso"
