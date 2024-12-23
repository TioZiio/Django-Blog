# Projeto Blog

Este projeto esta sendo desenvolvido junto ao curso da Udemy.
Curso de Python 3 do básico ao avançado.

Passo a Passo para configurar o Django dentro do Docker.

1. Configurar o requirements.txt:
    1. É opcional quais bibliotecas e versões, mas vou usar:  
        Django>=5.1,<5.2
        psycopg2-binary>=2.9,<2.10
        django-summernote>=0.8.20.0,<0.8.21
        django-axes>=7.0.0,<7.1
        python-dotenv>=1.0,<1.1
        pillow>=11.0,<=11.1

2. Configurar o docker-compose.yml:
    1. As configurações são bem pessoias, mas o meu ficou assim:
       [docker-compose.yml](https://github.com/TioZiio/Django-Blog/blob/main/docker-compose.yml)
    2. Imagem do PostgreSQL deve ser pego no hub.docker:  
            [Docker Hub Postgres](https://hub.docker.com/_/postgres)
    3. Volumes devem ser bem definidos, observe sobre permissões de pastas.  
        1. Existem 3 maneiras principais de volumes:  
            > Volumes gerenciados pelo Docker;  
            > Montagem vinculada;  
            > Volumes anônimos;  
    4. Não é recomendado inserir as variáveis de controle direto no docker-compose.  
            > from dotenv import load_dotenv  
            > load_dotenv(BASE_DIR.parent / 'dotenv_files' / '.django.env', override=True)  

3. Configurar o Dockerfile: 
    1. As configurações são bem pessoias, mas o meu ficou assim:
       [docker-compose.yml](https://github.com/TioZiio/Django-Blog/blob/main/Dockerfile)
    2. Imagem do PostgreSQL deve ser pego no hub.docker:  
            [Docker Hub Python](https://hub.docker.com/_/python)
    3. Fique atento as permissões e locais das pastas, para não gerar conflitos ou erros.  
    4. Criar um usuário sem home e sem senha, apenas para evitar o uso do root.  

4. Criando o Docker:  
    1. docker compose build  

5. Configurar o Django:
    1. Criar o projeto com:  
        docker compose run --rm app sh -c "django-admin startproject nome_projeto ."
    2. Configurar o settings.py:  
        1. Importe a biblioteca 'os'.  
        2. Crie uma variável para o caminho dos arquivos Statics:
            > DATA_DIR = BASE_DIR.parent / 'data' / 'web'  
        3. Localize o DATABASES e atualize as informações:  
            > 'default': {  
            >     'ENGINE': 'django.db.backends.postgresql',  
            >     'NAME': os.environ.get("DB_NAME"),  
            >     'HOST': os.environ.get("DB_HOST"),  
            >     'USER': os.environ.get("DB_USER"),  
            >     'PASSWORD': os.environ.get("DB_PASSWORD"),  
            > }
            >  
            > OBs.: Todas as variáveis foram criadas no docker-compose.yml  
        5. Localize o STATIC_URL:  
            > STATIC_URL = '/static/'  
            > STATIC_ROOT = DATA_DIR / 'static'  
            > MEDIA_URL = '/media/'  
            > MEDIA_ROOT = DATA_DIR / 'media'  
        6. Configurar os models e views de acordo com a preferência.   
        7. Criar o HTML,CSS,JS.  
        ### OBS: esta etapa e totalmente pessoal, não será detalhada.  

6. Inicialize o Docker:  
    1. Criar um super usuário no Docker para ter acesso no grupo Admin:  
        1. docker compose run --rm nome_projeto sh -c "python manage.py createsuperuser"  
    2. Rodar o Docker:
        1. docker compose up --build  
    3. No navegador: localhost:8000
