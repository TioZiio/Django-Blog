# Imagem:
FROM python:3.12
LABEL manteiner='github.com/TioZiio'

# Essa variável de ambiente é usada para controlar se o Python deve 
# gravar arquivos de bytecode (.pyc) no disco. 1 = Não, 0 = Sim
ENV PYTHONDONTWRITEBYTECODE 1

# Define que a saída do Python será exibida imediatamente no console ou em 
# outros dispositivos de saída, sem ser armazenada em buffer.
# Em resumo, você verá os outputs do Python em tempo real.
ENV PYTHONUNBUFFERED 1

# Diretório onde o App irá rodar
WORKDIR /blogapp

# Copia as dependências para o docker
COPY requirements.txt /blogapp/

# Instala as dependências
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /blogapp/requirements.txt

# Copiar o projeot local para o Docker
COPY blogapp /blogapp/

# Expor a porta 8000
EXPOSE 8000

