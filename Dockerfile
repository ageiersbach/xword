FROM debian:sid

RUN apt-get update && apt-get install -y \
  curl                \
  elixir              \
  node                \
  npm                 \
  rebar               \
  wget

#use en_US.UTF-8 to avoid warning from elixir
#RUN locale-gen en_US.UTF-8
# Configure locales
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en

RUN yes | mix local.hex

# Install Phoenix Framework
RUN yes | mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.15.0/phoenix_new-0.15.0.ez

WORKDIR xword

CMD /bin/bash
