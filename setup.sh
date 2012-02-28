#!/bin/bash
#############################################################################
# Automated installation script
#############################################################################
echo "This script will replace your zsh, vimrc files with this package's version.  "
echo "you should have this project checkedout in $HOME/bin, otherwise it'll fail/do something stupid"
echo "hit Ctrl+C to abort"
sleep 5
rm -frv $HOME/{.zshrc,.aliases,.vim,.vimrc}
cd $HOME
ln -s $HOME/bin/.zshrc
ln -s $HOME/bin/.vim
ln -s $HOME/bin/.vimrc
ln -s $HOME/bin/.zsh_local
ln -s $HOME/bin/zsh_functions/generic_functions.zsh  $HOME/bin/.zsh_local/
ln -s $HOME/bin/zsh_functions/aliases.zsh $HOME/bin/.zsh_local/

echo "Creating standard dirs"
for i in $HOME/projects $HOME/local $HOME/.vim_backup $HOME/.vim_runtime ; do 
   if [ ! -e ${i} ]; then
        mkdir $i >& /dev/null
   fi
done

echo "Standard coding projects go in $HOME/projects"
echo "eclipse code goes in $HOME/workspace"
echo "any $HOME install goes into $HOME/local and binary is symlinked in $HOME/bin/private"
