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
