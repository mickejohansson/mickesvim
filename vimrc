"Sets how many lines of history VIM has to remember
set history=700

"Enable filetype plugin
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"With a map leader it's possible to do extra key combinations
"like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>

"Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

"When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source $HOME/.vimrc

"Persistent undo
set undolevels=1000 "maximum number of changes that can be undone

set laststatus=2 "Always show the status line
let g:buftabs_in_statusline=1 "Show buftabs in status line
let g:buftabs_only_basename=1 "Show just the filename of each buffer

"Show space errors
let c_space_errors = 1

"Faster way of closing the current tab
map <leader>w :bw<cr>

"Faster way of inserting a new line
map <leader>, :put=''<cr> 

"Make tab autocompletion act like the shell
set wildmode=longest:full
set wildmenu

set expandtab "Replace tabs with spaces
set tabstop=2 "Number of spaces to use for tabs
set shiftwidth=2 "Number of spaces to insert when tabbing
set cindent "Indentation for C-code

"Use this nice color scheme
set background=dark
colorscheme wombat_m
syntax on

set ignorecase "Ignore case when searching
set smartcase "Dont ignore case if search contains one upper cased letter

set number "Show line numbers

set hlsearch "Highlight search results
set incsearch "Use incremental search

set autowrite "Write contents of file when navigating from buffer
set tags+=tags;/ "Search for ctags

"Moving to definition and back
map <C-j> <C-]>
noremap <C-k> <C-T>

map <C-left> <C-o>
map <C-right> <C-i>

"Use space space to search
map <space> /
map <silent> <leader><cr> :noh<cr>

"Use Control-Space for autocompletion
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
      \ "\<lt>C-n>" :
      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"Use f7 and f8 to switch between buffers
map <f7> :bp!<cr>
map <f8> :bn!<cr>
imap <f7> <Esc>:bp!<cr>
imap <f8> <Esc>:bn!<cr>

"Keep the cursor on the same column when switching buffers
set nostartofline

"Use jj to exit insert mode 
imap jj <Esc>

"Open the fussyfinder file mode with Ctrl-f
map <C-f> :FufFile<cr>

"Open the fussy finder tag mode with Ctrl-t
map <C-t> :FufTag<cr>

"Press F12 to save and make
map <f12> :w\|make<cr>
imap <f12> <Esc>:w\|make<cr>

