FROM python:3.8

ENV DELAY=60
ENV CONFIG_FILE=luxmedSniper.yaml

WORKDIR /usr/src/app
COPY . .
RUN pip install -r /usr/src/app/requirements.txt

ENTRYPOINT python3 /usr/src/app/luxmedSnip.p -d "${DELAY}" -c "${CONFIG_FILE}"
