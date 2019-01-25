########################################################################################
# Alias definitions
alias python=python3
alias pip=pip3
alias c='clear'
alias l='ls -al'
alias ls='ls -GFh'

# Emacs to use cocoa emacs app
# alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs

alias e='ec'

# alias emacsclient to 'ecl'
alias ecl='emacsclient -nw'

alias m='mvn -Dmaven.javadoc.skip=true'
alias g='git'
alias t="tree -I 'node_modules|cache'"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,node_modules,cache}"
alias pass='openssl rand -base64 16'
alias rg='rvm gemset use'


alias scheme="rlwrap -r -c -f ~/extn.d/mit_scheme_bindings.txt scheme"
alias ghci="ghci -XNPlusKPatterns"
alias hivec="hive -hiveconf hive.root.logger=DEBUG,console"
# alias jnote="jupyter notebook --notebook-dir=~/repo/notebooks"

function show() {
    echo "rvm: "`rvm-prompt`
    echo "git branch: "`git_current_branch`
    git-config.sh
}

function cleandir() {
    rm -rf $1 && mkdir -p $1 && cd $1
}
alias shw='show'
