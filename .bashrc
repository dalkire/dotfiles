if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi

export PATH="/Users/dalkire/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=~/.local/bin/:$PATH
export NODE_OPTIONS=--max_old_space_size=12288
