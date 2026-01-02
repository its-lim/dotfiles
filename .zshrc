# --- Starship 테마 실행 (필수) ---
eval "$(starship init zsh)"

# --- 기타 편리한 설정 (선택 사항) ---
# ls 명령어 칠 때 색깔 나오게 하기
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# 명령어 오타 났을 때 자동 수정 제안
setopt CORRECT

# 히스토리 저장 갯수 늘리기
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
