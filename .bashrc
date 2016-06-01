if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi
eval "$(_WAYRUNNER_COMPLETE=source wayrunner)"
