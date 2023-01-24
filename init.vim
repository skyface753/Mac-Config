call plug#begin()
"Linting
Plug 'dense-analysis/ale'
"React
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
"Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" VScode Scheme
Plug 'tomasiser/vim-code-dark'

"Git Changes
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


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
Plug 'Xuyuanp/scrollbar.nvim'
"  Plug 'wfxr/minimap.vim'
"  Plug 'severin-lemaignan/vim-minimap'
Plug 'Yggdroot/indentLine'
"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

"Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

call plug#end()

let mapleader = ","



" Coc
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <C-f> <Esc>ggVG<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>

lua << EOF

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"node_modules"},
        sorting_strategy = "ascending",
        }
}
EOF

" Scrollbar
augroup ScrollbarInit
	autocmd!
	autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
	autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
	autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
" ALE Config
let g:ale_fixers = {
			\   'javascript': ['eslint'],
			\}
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
"let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeShowHidden=1
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

"React
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

let g:python3_host_prog="/opt/homebrew/bin/python3"
let g:prettier#config#single_quote = 'true'
:set number
nmap <F6> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-b> :NERDTreeTabsToggle<CR>
map  <C-g> :GitGutterToggle<CR>
"map  <C-c-e> :Copilot enable<CR>
"map  <C-c-d> :Copilot disable<CR>
colorscheme gruvbox

"Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1



let g:indentLine_char = '⦙'
let g:dart_format_on_save = 1
inoremap <silent><expr> <c-space> coc#refresh()
" au VimEnter *  NERDTree
au VimEnter * GitGutterLineHighlightsEnable
au VimEnter * GitGutterDisable
autocmd BufWritePre *.js,*.ts Prettier
autocmd BufWritePre *.cpp %!astyle
