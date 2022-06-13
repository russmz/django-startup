FROM python:3.8

WORKDIR /usr/src/app

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

ADD requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt && pip cache purge

ADD entrypoint.sh entrypoint.sh
CMD ./entrypoint.sh
