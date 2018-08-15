# https://vimawesome.com/
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

if [ "$machine" == "Linux" ]; then
   sudo apt-get install build-essential cmake ctags
elif [ "$machine" == "Mac" ]; then
   echo "MAC ignore"
fi
cd
mkdir .vim
cd .vim
mkdir autoload
mkdir bundle
mkdir colors
mkdir plugin

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/garyburd/go-explorer.git

# installing auto-pair plugin support for vim
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

# install YouCompleteMe
# sudo apt-get install build-essential cmake
cd ~/.vim/bundle/YouCompleteMe 
git submodule update --init --recursive
./install.py --clang-completer --go-completer


# installing vim git support
cd ~/.vim/bundle
# install NerdTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/tpope/vim-fugitive
# installing vim tagbar
# sudo apt-get install ctags
git clone https://github.com/majutsushi/tagbar
# installing vim-airline and its theme
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

### commenting out proton color scheme
#cd ~/.vim/colors
#git clone https://github.com/vim-scripts/proton.git
#cd proton/colors
#cp *.vim ~/.vim/colors/
#cd ~/.vim/colors/
#rm -rf proton

cd ~/.vim/colors 
git clone https://github.com/tomasr/molokai.git
cd molokai/colors
cp *.vim ~/.vim/colors/
cd ~/.vim/colors/
rm -rf molokai

#cd ~/.vim/plugin/
#git clone https://github.com/fholgado/minibufexpl.vim.git
#cd
