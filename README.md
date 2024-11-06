# Projeto Blog

Este projeto esta sendo desenvolvido junto ao curso da Udemy.
Curso de Python 3 do básico ao avançado.

Passo a Passo para configurar o Django dentro do Docker.

1. Configurar o requirements.txt:
    1. É opcional quais bibliotecas e versões, mas vou usar:  
        Django>=5.1,<5.2  
        psycopg2-binary>=2.9,<2.10  

2. Configurar o docker-compose.yml:
    1. As configurações são bem pessoias, mas o meu ficou assim:
       [docker-compose.yml](https://github.com/TioZiio/Django-Blog/blob/main/docker-compose.yml)
    2. Informações importantes:
        Imagem do PostgreSQL e do Docker devem ser pegos no hub.docker:  
            [Docker Hub](https://hub.docker.com/)
    3. Volumes devem ser bem definidos, observe sobre permissões de pastas.  
        1. Existem 3 maneiras principais de volumes:  
            > Volomes gerenciados pelo Docker;  
            > Montagem vinculada;  
            > Volumes anônimos;  
