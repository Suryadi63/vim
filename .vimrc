" ============================================================================
" GLOBAL CONFIGURATION
" ============================================================================
" enable syntax highlighting (previously syntax on).
syntax enable

" set the window’s title, reflecting the file currently being edited.
set title

" Use an encoding that supports Unicode.
set encoding=utf-8

" show the line number
set number

" show the relative number
set relativenumber

" show cursor line
set cursorline

" Always show cursor position.
set ruler

" when scrolling, keep cursor 5 lines away from screen border
set scrolloff=5

" show the tab bar
set showtabline=2

" makes copy and paste work better
set clipboard=unnamedplus

" automatic indentation
set autoindent
set smartindent

" use spaces instead of tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" place a vertical line as a marker for maximum prescribed text width
" set textwidth=79
" set colorcolumn=+1

" use tabs at the start of a line, spaces elsewhere
set smarttab

" don't wrap text
set nowrap

" don't fold code
set nofoldenable

" make completion smarter.
set ignorecase
set smartcase

" Automatically re-open files after they have changed without prompting.
set autoread

" disable beep on errors.
set noerrorbells

" [DISABLED] flash the screen instead of beeping on errors.
set novisualbell
set termguicolors

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" enable mouse
set mouse=a

set background=dark

" call InitPluginManager only for this file
call plug#begin('~/.vim/plugged')

" Better file browser
Plug 'scrooloose/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" intellisense (autocompletion) engine for vim8 & neovim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" MUST INSTALL CocInstall coc-lists coc-marketplace
" THEN CocList marketplace TO INSTALL THE REST EXTENSIONS

" Large collection of vim colorschemes
Plug 'flazz/vim-colorschemes'

" File Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" useful overview of the code as a minimap sidebar.
Plug 'severin-lemaignan/vim-minimap'

call plug#end()

" ============================================================================
" CUSTOM MAPPINGS
" ============================================================================
" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" tab navigation mappings
map tt :tabnew
map <F3> :tabn<CR>
map <F2> :tabp<CR>

" ============================================================================
" COC CONFIGURATION
" ============================================================================
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" coc-prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile


" ============================================================================
" FZF CONFIGURATION
" ============================================================================
nnoremap <C-p> :<C-u>FZF<CR>

" ============================================================================
" NERDTREE CONFIGURATION
" ============================================================================
" automatically open nerdtree when no file name specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" toggle nerdtree display
map <F4> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" ============================================================================
" MINIMAP CONFIGURATION
" ============================================================================
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='Visual'

" ============================================================================
" AIRLINE CONFIGURATION
" ============================================================================
" set airline theme
" let g:airline_theme = 'wombat'
let g:airline_theme = 'onedark'
" let g:airline_theme = 'base16'
" displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" separators can be configured independently for the tablne
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1

" ============================================================================
" COLORSCHEME CONFIGURATION
" ============================================================================
" colorscheme kolor
" coloscheme space-vim-dark
" colorscheme dracula
" let g:seoul256_background = 234
" colorscheme seoul256
" colorscheme seti
" colorscheme darkspectrum
" colorscheme wombat
" colorscheme spacegray
" colorscheme codedark
colorscheme gruvbox
"colorscheme nord

" ============================================================================
" VIM_DEV_ICONS CONFIGURATION
" ============================================================================
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1

