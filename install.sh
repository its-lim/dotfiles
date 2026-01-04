#!/bin/bash

# 현재 스크립트가 있는 폴더 위치를 알아냄 (여기가 중요!)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "📂 Dotfiles 위치: $DOTFILES_DIR"

# 1. Starship 설치
echo "🚀 Starship 설치 중..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 2. .zshrc 심볼릭 링크 걸기 (경로 자동 인식)
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

# 여기가 수정된 부분!
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc

# 3. 쉘 변경 (필요시)
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    echo "🐚 zsh로 변경 시도..."
    sudo chsh -s $(which zsh) $(whoami)
fi

echo "✅ 설정 완료! (적용이 안 되면 'source ~/.zshrc'를 입력하세요)"