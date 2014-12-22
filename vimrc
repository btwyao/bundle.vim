set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" IDE features
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" Fast navigation
Plugin 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" enable syntax hightlight and completion
syntax on
let mapleader = 'f'

" color scheme
set background=dark

" highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

" search
set hlsearch
set ignorecase
noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" Default Indentation
set autoindent
set smartindent " indent when
set tabstop=4 " tab width
set softtabstop=4 " backspace
set shiftwidth=4 " indent width
set expandtab " expand tab to space

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

nnoremap ; :

" tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
nmap <F5> :TagbarToggle<cr>

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'
