# dotfiles
Keep in mind that first you create $HOME/.vim directory.  
Then, inside $HOME/.vim, you clone this repo.

```
mkdir $HOME/.vim
cd $HOME/.vim
git clone https://github.com/niciyan/dotfiles.git
```

## First confirm dependency
run below 
```
sh confirm_dep.sh
```
- git
- ~/.vim
- arch
- vim version

## My Vim requirements
- Python Supprot ( for jedi.vim)
- Lua Supprot ( for neocomplete )
- gcc, make ( for building vimproc )
