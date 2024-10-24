#Projeto Blog

Este projeto esta sendo desenvolvido junto ao curso da Udemy.
Curso de Python 3 do básico ao avançado.

Informações importantes:

1. Pasta migrations do App - Registra e aplica configurações do models (BD);

Comandos importantes Locais:

1. runserver - Inicia o servidor;
2. createsuperuser - Cria o Super Usuário;
3. makemigrations - Atualiza as modificações nos models;
4. migrate - Aplica novas Atualizações;
5. Configurar o docker para sempre usar sudo:
> 5.1 cat /etc/group | grep docker - verifica se o grupo existe
> 5.2 sudo usermod -aG docker $USER
> 5.3 Reinicie o Usuário

Comando para gerar SECRET_KEY:
~~~python
python3 -c "import string as s;from secrets import SystemRandom as SR;print(''.join(SR().choices(s.ascii_letters + s.digits + s.punctuation, k=64)));"
~~~
