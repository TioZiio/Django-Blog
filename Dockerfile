FROM python:3.12-alpine3.20

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    apk add --update --no-cache postgresql-client && \
    apk add --update --no-cache --virtual .tmp-build-deps \
        build-base postgresql-dev musl-dev && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    apk del .tmp-build-deps && \
    adduser --disabled-password --no-create-home tioziio
RUN mkdir -p /data/web/static && \
    chown -R tioziio:tioziio /data/web/static && \
    mkdir -p /data/web/media && \
    chown -R tioziio:tioziio /data/web/media && \
    chown -R tioziio:tioziio /py/lib/python3.12/site-packages

ENV PATH="/py/bin:$PATH"

USER tioziio 

CMD ["sh","-c","echo testando > /app/tes.txt"]
