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

" needed so deoplete can auto select the first suggestion
set completeopt+=noinsert
" comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
set completeopt-=preview

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

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

set background=dark
filetype plugin on
set mouse=a


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'francoiscabrol/ranger.vim'
Plug 'miyakogi/seiya.vim'
Plug 'neoclide/coc.nvim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'francoiscabrol/ranger.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'francoiscabrol/ranger.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
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


" Ranger 
let g:ranger_map_keys = 1
map <F5> :Ranger<CR>

"C plugin
  let g:C_UseTool_cmake    = 'yes'
  let g:C_UseTool_doxygen  = 'yes'


" ============================================================================
" FZF CONFIGURATION
" ============================================================================
nnoremap <C-p> :<C-u>FZF<CR>

" ============================================================================
" NERDTREE CONFIGURATION
" ============================================================================
map <F4> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
map ,t :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"============================================================================
" " NERDCOMMENTER CONFIGURATION
" " ============================================================================
" " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
" " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
" " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'
 

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
" let g:airline_theme = 'deus'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
" ============================================================================
" VIM_DEV_ICONS CONFIGURATION
" ============================================================================
" loading the plugin
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_startify = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1

" ============================================================================
" INDENTLINE CONFIGURATION
" ============================================================================
" " customize conceal color
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['┊']


" ============================================================================
" INDENTGUIDE CONFIGURATION
" ============================================================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level           = 1
let g:indent_guides_auto_colors           = 1
let g:indent_guides_color_change_percent  = 10
let g:indent_guides_space_guides          = 1
let g:indent_guides_tab_guides            = 1
let g:indent_guides_guide_size            = 1
let g:indent_guides_exclude_filetypes     = ['help', 'nerdtree', 'startify', 'Preview','__doc__','rst']
nmap <F8> :TagbarToggle<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:seiya_auto_enable=1

 colorscheme gruvbox
 let g:ranger_map_keys = 1
 let g:ranger_open_new_tab = 1
 map f :Ranger<CR>.
