export PATH=~/bin:/usr/local/vim73/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH=/Library/Postgresql/9.0/bin:$PATH

export EDITOR=vim

source ~/.git-completion.bash
PS1='\u@\h \W\$ '


GIT_PS1_SHOWDIRTYSTATE=1


alias mc='LANG=C mc'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias sg='script/generate'
alias g='git'
alias gf='git flow'
alias gff='git flow feature'
alias gfr='git flow release'
alias gc='git commit'
alias gst='git status'
alias spr='touch tmp/restart.txt'
alias sc='script/console'
alias deploy_on_staging='g co staging && g reset --hard @{-1} && g push -f && cap staging deploy && g co @{-1}'
alias tower='open -a Tower .'
alias ss='passenger start --max-pool-size 3'
alias bx="bundle exec"


export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.3
export M2=$M2_HOME/bin

export PATH=$M2:$HOME/local/bin:$PATH
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
