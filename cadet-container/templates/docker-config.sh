#! /usr/bin/env sh

set -x

CONFIGURE_SECRETS=
CONFIGURE_ENV=

# CONFIGURE BACKEND
if [ "$CONFIGURE_SECRETS" = "y" ]; then
  git clone https://github.com/source-academy/cadet cadet
  cp secrets.exs cadet/config
fi

# CONFIGURE FRONTEND
if [ "$CONFIGURE_ENV" = "y" ]; then
  git clone https://github.com/source-academy/cadet-frontend cadet-frontend
  cp .env cadet-frontend
fi
