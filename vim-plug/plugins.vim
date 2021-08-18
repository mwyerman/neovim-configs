" auto-install vim-plug
call plug#begin('/home/mwyerman/.config/nvim/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Which Key (command directory)
    Plug 'liuchengxu/vim-which-key'

    " Devicons
    Plug 'ryanoasis/vim-devicons' " Required NerdFont

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " NERDTree (sidebar/file explorer)
    Plug 'preservim/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Reqs NERDTree and devicons

    " Commentary (/ to comment)
    Plug 'tpope/vim-commentary'

    " Airline (footer bar)
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF and others, if enabled
    if enable_fzf == 1
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
    endif

    " Git packages
    if enable_fzf == 1
        " Show +/-/~ line by line
        Plug 'mhinz/vim-signify'
        " Allows :Git commands from nvim
        Plug 'tpope/vim-fugitive'
        " Github integration
        Plug 'tpope/vim-rhubarb'
        " Git log graph
        Plug 'junegunn/gv.vim'
    endif

    " Theme
    if theme == "onedark"
        Plug 'navarasu/onedark.nvim'
    endif

    if quickscope == 1
        Plug 'unblevable/quick-scope'
    endif

    if sneak == 1
        Plug 'justinmk/vim-sneak'
    endif

call plug#end()
