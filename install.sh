# 1. Starship 설치 (공식 스크립트 사용)
echo "🚀 Starship 설치 중..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 2. 내 dotfiles의 .zshrc를 홈 디렉토리로 심볼릭 링크 걸기
# (기존 파일이 있으면 백업 후 덮어씁니다)
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# 3. 기본 쉘을 zsh로 변경 (Codespaces 유저용)
# (이미 zsh이면 패스합니다)
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    echo "🐚 기본 쉘을 zsh로 변경합니다..."
    sudo chsh -s $(which zsh) $(whoami)
fi

echo "✅ 설정 완료! 터미널을 재시작하면 Starship이 뜹니다."
