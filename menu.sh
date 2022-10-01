#!/bin/bash

while [ true ]
do
  echo "------------------------"
  echo "1) Questão 1."
  echo "2) Questão 2."
  echo "3) Questão 3."
  echo "4) Questão 4."
  echo 
  echo -n "Escolha a questão 👉 "
  
  read questao

  case $questao in
  0)
  exit
  ;;
  1)
  echo
  echo "Script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações:"
  echo " - O maior dos números recebidos"
  echo " - O somatório dos números recebidos."
  echo -n "Digite o primeiro número 👉 "
  read arg1
  echo -n "Digite o segundo número 👉 "
  read arg2
  echo 
  ./questoes/exc1.sh $arg1 $arg2
  ;;

  2)
  echo
  echo "Script que solicita a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas)."
  ./questoes/exc2.sh
  echo
  ;;
  3)
  echo
  echo "Script que recebe como parâmetro o caminho de um diretório e lista seus arquivos e diretórios um a um. Se for diretório, é escrito '(dir)' ao lado do diretório."
  echo -n "Digite o caminho de um diretório 👉 "
  read arg
  echo 
  ./questoes/exc3.sh $arg
  ;;
  4)
  echo
  echo "Script que recebe um número como parâmetro e imprime todos os números pares de O até o número informado como parâmetro."
  echo -n "Digite um número 👉 "
  read arg 
  echo
  ./questoes/exc4.sh $arg
  ;;
  *)
  echo "opção inválida!"
  esac

  echo "------------------------"
done