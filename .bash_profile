export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export audio_whine="amixer -c 0 set 'Headphone Mic Boost',0 1";

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
