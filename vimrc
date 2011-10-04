" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Make sure vim recognizes .tml files as xml
au BufNewFile,BufRead *.tml set filetype=xml

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source $HOME/.vimrc

" Persistent undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set laststatus=2 " Always show the status line
let g:buftabs_in_statusline=1 " Show buftabs in status line
let g:buftabs_only_basename=1 " Show just the filename of each buffer

" Show space errors
" let c_space_errors = 1

" Faster way of closing the current tab
map <leader>w :bw<cr>

" Faster way of inserting a new line
map <leader>, :put=''<cr> 

" Make tab autocompletion act like the shell
set wildmode=longest:full
set wildmenu

set expandtab " Replace tabs with spaces
set tabstop=2 " Number of spaces to use for tabs
set shiftwidth=2 " Number of spaces to insert when tabbing
set cindent " Indentation for C-code

" Use this nice color scheme
set background=dark
colorscheme wombat_m
syntax on

set ignorecase " Ignore case when searching
set smartcase " Dont ignore case if search contains one upper cased letter

set number " Show line numbers

set hlsearch " Highlight search results
set incsearch " Use incremental search

set autowrite " Write contents of file when navigating from buffer
set tags+=tags;/ " Search for ctags

" Moving to definition and back
map <C-j> <C-]>
noremap <C-k> <C-T>

map <C-left> <C-o>
map <C-right> <C-i>

" Use space space to search
map <space> /
map <S-space> ?
map <silent> <leader><cr> :noh<cr>

" Press ctrl+r to replace all occurenses of a text selected visually
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Use Control-Space for autocompletion
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
      \ "\<lt>C-n>" :
      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Set terminal-like mode for autocompletion
set completeopt=menu,longest

" Use Control L/H to switch between buffers
map <C-h> :bp!<cr>
map <C-l> :bn!<cr>
imap <C-h> <Esc>:bp!<cr>
imap <C-l> <Esc>:bn!<cr>

" Use Control Up/Down to switch between errors
map <C-up> :cp!<cr>
map <C-down> :cn!<cr>

" Keep the cursor on the same column when switching buffers
set nostartofline

" Use jj to exit insert mode 
imap jj <Esc>

" No caching for fuzzy finder
let g:fuf_help_cache_dir = ''
let g:fuf_tag_cache_dir = ''
let g:fuf_taggedfile_cache_dir = ''

" Open the fuzzy finder file mode with Ctrl-f
map <C-f> :FufFile<cr>

" Open the fuzzy finder tag mode with Ctrl-t
map <C-t> :FufTag<cr>

" Press F12 to save and make
map <f12> :w\|make<cr>
imap <f12> <Esc>:w\|make<cr>

