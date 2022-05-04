FROM python:3.10

# Keeps Python from generating .pyc files in the container
ENV PYTHONUNBUFFERED=1

# Turns off buffering for easier container logging
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    libcurl4-openssl-dev \
    zsh \
    git \ 
    openssh-client \
    vim \
&& rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
