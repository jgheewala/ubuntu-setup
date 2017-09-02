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

cd ~/.vim/colors
git clone https://github.com/vim-scripts/proton.git
cd proton/colors
cp *.vim ~/.vim/colors/
cd ~/.vim/colors/
rm -rf proton

cd ~/.vim/colors 
git clone https://github.com/tomasr/molokai.git
cd molokai/colors
cp *.vim ~/.vim/colors/
cd ~/.vim/colors/
rm -rf molokai

cd ~/.vim/plugin/
git clone https://github.com/fholgado/minibufexpl.vim.git
cd

