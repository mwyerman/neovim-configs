let $VIMHOME=expand('<sfile>:p:h')

source $VIMHOME\config.vim " Configuration. Keep on top

source $VIMHOME\vim-plug\plugins.vim " Vim Plug included packages
source $VIMHOME\general\settings.vim " Built-in settings
source $VIMHOME\keys\mappings.vim " Custom Keybindings
source $VIMHOME\keys\which-key.vim " Which-key config
source $VIMHOME\ui\nerdtree.vim " NERDTree config
source $VIMHOME\ui\airline.vim " airline config


