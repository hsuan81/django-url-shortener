ARG VARIANT=3-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

ARG NODE_VERSION="none"
RUN if [ "${NODE_VERSION}" != "none" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

ENV PYTHONUNBUFFED=1
# WORKDIR /app
# EXPOSE 8000

COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp
    # apk add --no-cache python3 postgresql-libs && \
    # apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev postgresql-dev && \
    # apk --purge del .build-deps

# COPY . .

# RUN adduser -D user
# USER user