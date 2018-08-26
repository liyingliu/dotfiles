bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

source /Users/liying/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle zsh-users/zsh-completions

#antigen theme robbyrussell
#antigen theme candy
antigen theme agnoster

antigen apply

#load bashrc and aliases
if [ -f ~/.bashrc ] ; then
    source  ~/.bashrc
fi

if [ -f ~/.bash_aliases ] ; then
    source  ~/.bash_aliases
fi

if [ -f ~/.profile ] ; then
    source  ~/.profile
fi

#hide the device name
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
