let $VIMHOME=expand('<sfile>:p:h:h')
source $VIMHOME\nvim\vim-plug\plugins.vim
source $VIMHOME\nvim\general\settings.vim
source $VIMHOME\nvim\keys\mappings.vim
source $VIMHOME\nvim\themes\nord.vim
source $VIMHOME\nvim\dev\lsp-config.vim
source $VIMHOME\nvim\dev\compe-config.lua
source $VIMHOME\nvim\themes\airline.vim
source $VIMHOME\nvim\vim-plug\start-screen.vim
source $VIMHOME\nvim\keys\which-key.vim
source $VIMHOME\nvim\git\signify.vim

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ | else
            \ |   NERDTree
            \ |   wincmd w
            \ | endif
