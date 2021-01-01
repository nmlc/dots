export PATH=$HOME/.magit:$PATH
export PATH=$HOME/.orgmode:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/Library/Python/3.8/bin/:$PATH
export GOPATH=$HOME/go
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export EDITOR=nvim
alias ma="magit"
alias ml="magitd"
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"
alias ks="k9s --readonly"
alias vh="nvim ."
alias me="molecule"
alias tp="tsh ls | fzf | cut -d' ' -f1 | xargs -o -I{} tsh ssh teleport-production@{}"
alias tps="tsh ls | fzf | cut -d' ' -f1 | xargs -o -I{} tsh ssh teleport-staging@{}"


export TERM=xterm-256color
export PS1="\W \\$ "
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#4d4d4c,bg:#eeeeee,hl:#d7005f
    --color=fg+:#4d4d4c,bg+:#e8e8e8,hl+:#d7005f
    --color=info:#4271ae,prompt:#8959a8,pointer:#d7005f
    --color=marker:#4271ae,spinner:#4271ae,header:#4271ae'
