# https://vimawesome.com/
sudo apt-get install build-essential cmake ctags
cd
mkdir .vim
cd .vim
mkdir autoload
mkdir bundle
mkdir colors
mkdir plugin

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

cd ~/.vim/bundle
git clone git@github.com:Valloric/YouCompleteMe.git
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/garyburd/go-explorer.git

# install YouCompleteMe
# sudo apt-get install build-essential cmake
cd ~/.vim/bundle/YouCompleteMe 
git submodule update --init --recursive
./install.py --clang-completer --go-completer

# install NerdTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# installing vim-gitgutter
cd ~/.vim/bundle
git clone https://github.com/airblade/vim-gitgutter

# installing vim tagbar
# sudo apt-get install ctags
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar

# installing vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

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

cd ~/.vim/plugin/
git clone https://github.com/fholgado/minibufexpl.vim.git
cd
