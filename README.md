# LINUXtips-Giropops-Senhas
#### Este repositório contém a aplicação e o Dockerfile referente ao desafio do Day2 realizado no PICK2024.
Para que essa aplicação funcione, primeiramente temos que fazer o clone do repositório:
```
git clone https://github.com/alfalmeida/LINUXtips-Giropops-Senhas.git
```
Depois fazer o pull da imagem do Redis que iremos utilizar:
```
docker pull redis:latest
```
Agora faremos o pull da imagem que criamos, contendo a aplicação:
```
docker pull alfalmeida/linuxtips-giropops-senhas:1.0
```
Agora é hora de colocar os containers para rodar e começaremos pelo container do Redis:
```
docker run -d --name redis-container redis
```
E finalmente, colocaremos o container da aplicação para rodar:
```
docker run -e REDIS_HOST=colocar_o_ip_do_container_redis --name nome_do_container -p 5000:5000 alfalmeida/linuxtips-giropops-senhas:1.0
```
***OBS: O numero de IP do container do Redis pode ser visualizado com um docker container inspect nome_do_container pois neste desafio
ainda não domino a parte de redes de container, sendo que por meio de variável, ao executar a aplicação, a mesma não consegue resolver
nomes.***
