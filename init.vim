" color grammar
syntax enable

" show line number
set nu

" auto indent by filetype
filetype plugin indent on

" show curor position
set ruler

" ignore case while search
set ignorecase

" not ignore case while search string include upper case
set smartcase

" highlight marched patten
set hlsearch

" auto give search result while typing search string
set incsearch

call plug#begin()

Plug 'dense-analysis/ale'

Plug 'majutsushi/tagbar'

Plug 'preservim/vim-markdown'

Plug 'rust-lang/rust.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()

nmap <F8> :TagbarToggle<CR>

" netrw set up
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Lexplore
augroup END
nnoremap <C-B> :Lexplore<CR> 
