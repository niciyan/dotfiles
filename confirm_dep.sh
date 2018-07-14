echo "This file confirms things below...
- Git (command)
- .vim (dir)
- Architecture
- Vim version
"

echo -n "Checking git ....  "
if [ -x "$(command -v git)" ]; then
	echo "Ok"
else
	echo "Bad"
fi

echo -n "Checking .vim dir exists ...  "
if [ -d ~/.vim ]; then
	echo "Ok"
else
	echo "Bad"
fi

echo "Displaying arch ...  "
uname -a | sed -e 's/^/     /g'

echo -n "Checking vim available ...  "
if [ -x "$(command -v vim )" ]; then
	echo "Ok"
	echo "Displaying vim version ...  "
	vim --version | head -n 3 | sed -e 's/^/     /g'
else
	echo "Bad"
fi

echo "\n\nYou have to run below for dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim
"
