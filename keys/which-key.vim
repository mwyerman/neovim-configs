"Define space as leader key
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>"

" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map.f = {
                  \ 'name': '+file',
                  \ 's': [':w', 'save'],
                  \ 'q': [':q!', 'quit without saving'],
                  \ 'Q': [':wq', 'save and quit'],
                  \}

let g:which_key_map.t = {
      \ 'name': '+tree',
      \ 't': [':NERDTreeToggle', 'toggle'],
      \ 'c': [':NERDTreeClose', 'close'],
      \ 'm': [':NERDTreeMirror', 'mirror'],
      \ 'e': [':NERDTreeFocus', 'enable'],
      \ 'f': [':NERDTreeFind', 'find'],
      \}

let g:which_key_map.p = {
      \ 'name': '+pkg',
      \ 's': [':PlugStatus', 'status'],
      \ 'i': [':PlugInstall', 'install'],
      \ 'u': [':PlugUpdate', 'update'],
      \ 'c': [':PlugClean', 'clean'],
      \ 'd': [':PlugDiff', 'diff'],
      \}
