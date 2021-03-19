# Syntax highlighting in less
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export TERM='xterm-256color'

alias zshhist="vim ~/.zsh_history"
alias zprofil="vim ~/.zprofile"
alias zshenv="vim ~/.zshenv"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"

bindkey -v;
set editing-mode vi

stty stop ""

