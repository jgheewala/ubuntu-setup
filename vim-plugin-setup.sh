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
wget http://www.vim.org/scripts/download_script.php?src_id=9818

cd ~/.vim/plugin/
git clone https://github.com/fholgado/minibufexpl.vim.git
cd plugin/
cp *.vim ../
cd ../
rm -rf plugin/
cd

