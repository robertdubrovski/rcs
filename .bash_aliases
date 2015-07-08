unamestr=`uname`

if [[ "$unamestr" == "Darwin" ]]; then
    alias find='find .'
    alias tree='tree -C'
    export CLICOLOR=1
    export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
fi
