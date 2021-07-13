FROM python:3-alpine

WORKDIR /usr/src/app

COPY . .
RUN python setup.py install

EXPOSE 9999/tcp

ENTRYPOINT [ "python", "-m", "sxm.cli", "-h", "0.0.0.0" ]
