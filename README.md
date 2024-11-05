#Projeto Blog

Este projeto esta sendo desenvolvido junto ao curso da Udemy.
Curso de Python 3 do básico ao avançado.

Informações importantes:

1. Pasta migrations do App - Registra e aplica configurações do models (BD);
2. Dockerfile contrói a imagem (linux);
3. Docker-compose manipula as configurações dos conteiners;

Comandos importantes Locais Django:

1. manage.py runserver - Inicia o servidor;
2. manage.py createsuperuser - Cria o Super Usuário;
3. manage.py makemigrations - Atualiza as modificações nos models;
4. manage.py migrate - Aplica novas Atualizações;

Comandos importantes Docker
1. Configurar o docker como sudo na máquina local:
    # Verifica se o grupo existe:
    5.1. cat /etc/group | grep docker
    5.2. sudo usermod -aG docker $USER
    5.3. Reinicie o Usuário
2. Lista os conteiners ativos
    2.1 docker ps
3. Lista todos os conteiners
    3.1 docker ps -a
4. Cria o conteneiner com o arquivo docker-compose.yml
    4.1 docker compose up -d

Comando para gerar SECRET_KEY:
~~~python
python3 -c "import string as s;from secrets import SystemRandom as SR;print(''.join(SR().choices(s.ascii_letters + s.digits + s.punctuation, k=64)));"
~~~
