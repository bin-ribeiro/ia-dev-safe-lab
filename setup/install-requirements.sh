#!/bin/bash
# setup/install-requirements.sh
# Script para instalar dependências do ambiente IA Dev Safe Lab

set -e  # Para o script se qualquer comando falhar

echo "🚀 Iniciando instalação das dependências..."

# 1. Verifica se estamos no Arch/Omarchy
if ! command -v pacman &> /dev/null; then
    echo "❌ Este script requer pacman (Arch Linux/Omarchy)."
    exit 1
fi

# 2. Instala bubblewrap (sandbox)
echo "📦 Instalando bubblewrap..."
sudo pacman -S --noconfirm bubblewrap

# 3. Instala Rust via mise (se não estiver instalado)
if ! command -v mise &> /dev/null; then
    echo "❌ 'mise' não encontrado. Instale-o primeiro: https://mise.jdx.dev/"
    exit 1
fi

echo "🦀 Configurando Rust via mise..."
mise use -g rust@latest

# 4. Instala ai-jail
echo "🔒 Instalando ai-jail..."
cargo install --locked ai-jail

# 5. Instala Node.js (para os exemplos do AgentFS)
echo "📦 Configurando Node.js via mise..."
mise use -g node@22

echo "✅ Instalação concluída!"
echo "Teste com: ai-jail --version"
