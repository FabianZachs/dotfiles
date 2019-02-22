#git clone https://github.com/FabianZachs/dotfiles.git

rsync -a dotfiles/ ~
rm -rf dotfiles/
#
# run vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

source ~/.zshrc

vim -c 'PluginInstall' -c 'qa!'

