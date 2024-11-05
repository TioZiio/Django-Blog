#Projeto Blog

Este projeto esta sendo desenvolvido junto ao curso da Udemy.
Curso de Python 3 do básico ao avançado.

Informações importantes:

1. Pasta migrations do App - Registra e aplica configurações do models (BD);
2. Dockerfile contrói a imagem (linux);
3. Docker-compose manipula as configurações dos conteiners;

Comandos importantes Docker
1. Configurar o docker como sudo na máquina local:
    1.1 cat /etc/group | grep docker - Verifica se o grupo existe:
    1.2. sudo usermod -aG docker $USER
    1.3. Reinicie o Usuário
2. Lista os conteiners
    2.1 docker ps - apenas ativos
    2.2 docker ps -a - todos os conteiners
3. Cria o conteneiner com o arquivo docker-compose.yml
    3.1 docker compose up -d

Comando para gerar SECRET_KEY:
~~~python
python3 -c "import string as s;from secrets import SystemRandom as SR;print(''.join(SR().choices(s.ascii_letters + s.digits + s.punctuation, k=64)));"
~~~
