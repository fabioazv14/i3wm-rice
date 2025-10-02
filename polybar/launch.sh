#!/usr/bin/env bash

# Mata qualquer Polybar que esteja a correr
killall -q polybar

# Espera até fechar totalmente
while pgrep -x polybar >/dev/null; do sleep 0.1; done

# Inicia a barra
polybar rightbar &
polybar leftbar &
polybar middlebar &
