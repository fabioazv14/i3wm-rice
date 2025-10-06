#!/usr/bin/env bash

# Workspace 1
i3-msg "workspace 1"

# Esquerda
i3-msg "split h"
# Terminal Fastfetch - esquerda topo (60%)
kitty -e bash -c 'fastfetch; exec bash' &
sleep 0.2
i3-msg "split v"
# Terminal Ranger - esquerda baixo (40%)
kitty -e ranger &
sleep 0.2
# Ajusta proporção esquerda
i3-msg "[title=\"Fastfetch\"] resize set 60 ppt height"
i3-msg "[title=\"Ranger\"] resize set 40 ppt height"

# Direita
i3-msg "focus right; split v"
# Topo direito: Peaclock
kitty -e peaclock &
sleep 0.2
# Topo direito: CMatrix
i3-msg "split h"
kitty -e cmatrix &
sleep 0.2
# Ajusta proporções
i3-msg "[title=\"Peaclock\"] resize set 50 ppt width"
i3-msg "[title=\"CMatrix\"] resize set 50 ppt width"

# Fundo direito: terminal simples
kitty &
sleep 0.2


