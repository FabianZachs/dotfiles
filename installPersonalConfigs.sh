#git clone https://github.com/FabianZachs/dotfiles.git

# tmux downloaded from github
# place tmux into right location
# put PATH to that location
#export PATH="$PATH:/$(HOME)/local/bin"
# fzf :
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install


chsh -s $(whereis zsh)

rsync -a dotfiles/ ~
rm -rf dotfiles/
#
# run vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

source ~/.zshrc

vim -c 'PluginInstall' -c 'qa!'

