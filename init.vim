call plug#begin()

  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'chun-yang/auto-pairs'
  Plug 'yuezk/vim-js'
  Plug 'github/copilot.vim'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'tpope/vim-commentary'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  Plug 'eslint/eslint'
  Plug 'Nopik/vim-nerdtree-direnter'
  "Dart/Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
"  Plug 'wfxr/minimap.vim'
call plug#end()
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let NERDTreeMapOpenInTab='<ENTER>'

let g:python3_host_prog="/opt/homebrew/bin/python3"

:set number
nmap <F6> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-b> :NERDTreeTabsToggle<CR>
colorscheme gruvbox

inoremap <silent><expr> <c-space> coc#refresh()
 au VimEnter *  NERDTree
autocmd BufWritePre *.js Prettier
