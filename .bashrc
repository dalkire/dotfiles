if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi

eval "$(_WAYRUNNER_COMPLETE=source wayrunner)"
export PATH="/Users/dalkire/bin:$PATH"
