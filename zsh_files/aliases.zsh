set -o vi 
alias ls='ls --color'
alias ll='ls -lh'
alias la='ls -la'
alias c=clear
alias techie="ssh user@techieworld.org"

export PATH=~/bin:$PATH
export PATH=~/bin/git:$PATH  ##adding custom git scripts.
export PATH=~/bin/git:$PATH  ##adding custom kvm/qemu scripts.
export PATH=$PATH:/home/user/bin

##Required for silly Ubuntu behavior.
export PATH=$PATH:/var/lib/gems/1.8/gems/cheat-1.2.1/bin/

alias rshl='rsync --bwlimit=500'

##eclipse bug, not sure if its still needed.
export GDK_NATIVE_WINDOWS=true  

export EDITOR=/usr/bin/vim
export PATH=$PATH:/usr/local/bin

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/projects/android-sdk-linux_86/tools

## CVS
export CVS_RSH=ssh
export CVSROOT=cvs:/cvs
export CVS_RSH CVSROOT

##java
#
#alias aptd='sudo apt-get update && sudo apt-get dist-upgrade'  ##debian
alias apta='sudo pacman -Syu && sudo rm -frv /var/cache/pacman/pkg/*.{xz,gz}'  ## am I really this lazy?  ## arch
alias aptg='sudo emerge --sync && sudo emerge -udN world -av'  ##gentoo
alias aptr='sudo yum update' ## redhat

export ANT_HOME=/usr/share/ant/
