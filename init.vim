"==============================================================================
" Optionns
"==============================================================================
syntax on

set nu
set noerrorbells

"don't create `filename~` backups
set nobackup
set noswapfile

set colorcolumn=80

"triggers autoread whenever I switch buffer or when focusing vim again
set autoread
au FocusGained,BufEnter * :silent! !

"use Unicode
set encoding=utf-8

"line numbers and distances
set number 

"statusline indicates insert or normal mode
set showmode showcmd

"make scrolling and painting fast
set lazyredraw

"highlight matching parens, braces, brackets, etc
set showmatch

"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir

"StatusLine always visible, display full path
"http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set laststatus=2 statusline=%F

"Use system clipboard
set clipboard=unnamedplus

"Folding
"https://vim.fandom.com/wiki/Folding
"https://vim.fandom.com/wiki/All_folds_open_when_opening_a_file
"https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1

"Better colors.
set termguicolors 


"==============================================================================
"* vimplug *
"==============================================================================
call plug#begin('~/.local/share/nvim/plugged')

"https://github.com/vimwiki/vimwiki
"A wiki engine for vim \ww to access.
Plug 'vimwiki/vimwiki'

"https://github.com/morhetz/gruvbox
"Cool retro theme
Plug 'morhetz/gruvbox'

"https://github.com/preservim/nerdtree
"The NERDTree is a file system explorer for the Vim editor.
Plug 'scrooloose/nerdtree'

"https://github.com/vim-syntastic/syntastic
"a syntax checking plugin that runs files through external syntax checkers 
"and displays any resulting errors to the user. 
Plug 'scrooloose/syntastic'

"https://github.com/sheerun/vim-polyglot
"A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

"https://github.com/yggdroot/indentline
"Adds lines to show indentation for formatting purposes.
Plug 'yggdroot/indentline'

"end vimplug
call plug#end()

colorscheme gruvbox
set background=dark

"syntastic settings
 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on

" Start NERDTree and put the cursor back in the other window.
nnoremap <F9> :NERDTreeToggle<CR>
