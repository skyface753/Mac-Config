call plug#begin()

  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'chun-yang/auto-pairs'
  Plug 'yuezk/vim-js'
  Plug 'github/copilot.vim'
  Plug 'jistr/vim-nerdtree-tabs'
  
  "Dart/Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'wfxr/minimap.vim'
call plug#end()

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

:set number
nmap <F6> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map <C-b> :NERDTreeTabsToggle<CR>
inoremap <silent><expr> <c-space> coc#refresh()
 au VimEnter *  NERDTree
