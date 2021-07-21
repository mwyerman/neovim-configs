" auto-install vim-plug
if empty(glob('$VIMHOME/autoload/plug.vim'))
  silent !curl -fLo $VIMHOME/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$VIMHOME/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Which Key
    Plug 'liuchengxu/vim-which-key'

    " Devicons
    Plug 'ryanoasis/vim-devicons' " Required NerdFont

    " File Explorer
    Plug 'preservim/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Reqs NERDTree and devicons

call plug#end()
