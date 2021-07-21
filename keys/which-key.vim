"Define space as leader key
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>"

" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map['/'] = [':Commentary', 'comment']

let g:which_key_map.f = {
                  \ 'name': '+file',
                  \ 's': [':w', 'save'],
                  \ 'q': [':q!', 'quit without saving'],
                  \ 'Q': [':wq', 'save and quit'],
                  \}

" NERDTree / File explorer
let g:which_key_map.t = {
      \ 'name': '+tree',
      \ 't': [':NERDTreeToggle', 'toggle'],
      \ 'c': [':NERDTreeClose', 'close'],
      \ 'm': [':NERDTreeMirror', 'mirror'],
      \ 'e': [':NERDTreeFocus', 'enable'],
      \ 'f': [':NERDTreeFind', 'find'],
      \}

" vim-plug package manager
let g:which_key_map.p = {
      \ 'name': '+pkg',
      \ 's': [':PlugStatus', 'status'],
      \ 'i': [':PlugInstall', 'install'],
      \ 'u': [':PlugUpdate', 'update'],
      \ 'c': [':PlugClean', 'clean'],
      \ 'd': [':PlugDiff', 'diff'],
      \}

" window - buffer changes
let g:which_key_map.w = {
      \ 'name': '+window',
      \ 'h': ['<C-W>s', 'split below'],
      \ 'v': ['<C-W>v', 'split right'],
      \ 'b': ['<C-W>=', 'balance splits'],
      \ 's': ['<C-W>r', 'swap splits'],
      \ 'o': ['<C-W>o', 'close other splits'],
      \}

" s is for search
if enable_fzf == 1
      let g:which_key_map.s = {
            \ 'name' : '+search' ,
            \ '/' : [':History/'     , 'history'],
            \ ';' : [':Commands'     , 'commands'],
            \ 'a' : [':Ag'           , 'text Ag'],
            \ 'b' : [':BLines'       , 'current buffer'],
            \ 'B' : [':Buffers'      , 'open buffers'],
            \ 'c' : [':Commits'      , 'commits'],
            \ 'C' : [':BCommits'     , 'buffer commits'],
            \ 'f' : [':Files'        , 'files'],
            \ 'g' : [':GFiles'       , 'git files'],
            \ 'G' : [':GFiles?'      , 'modified git files'],
            \ 'h' : [':History'      , 'file history'],
            \ 'H' : [':History:'     , 'command history'],
            \ 'l' : [':Lines'        , 'lines'] ,
            \ 'm' : [':Marks'        , 'marks'] ,
            \ 'M' : [':Maps'         , 'normal maps'] ,
            \ 'p' : [':Helptags'     , 'help tags'] ,
            \ 'P' : [':Tags'         , 'project tags'],
            \ 's' : [':Snippets'     , 'snippets'],
            \ 'S' : [':Colors'       , 'color schemes'],
            \ 't' : [':Rg'           , 'text Rg'],
            \ 'T' : [':BTags'        , 'buffer tags'],
            \ 'w' : [':Windows'      , 'search windows'],
            \ 'y' : [':Filetypes'    , 'file types'],
            \ 'z' : [':FZF'          , 'FZF'],
            \ }
endif

" git menu
if enable_git == 1
      let g:which_key_map.g = {
            \ 'name': '+git',
            \ 'l': [':SignifyToggle', 'toggle line change labels'],
            \ 'L': [':SignifyToggleHighlight', 'toggle line change highlights'],
            \ 'w': [':GBrowse', 'show on github'],
            \ 'c': [':GV', 'show commits'],
            \ 'C': [':GV!', 'file commits'],
            \ 'h': [':GV?', 'file history'],
            \}
endif
