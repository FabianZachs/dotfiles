
git clone https://github.com/FabianZachs/dotfiles.git

rsync -a dotfiles/ ~
rm -rf dotfiles/
#
# run vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

source ~/.zshrc


# git pull everytime we login 
# login script
