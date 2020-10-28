call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'jceb/vim-orgmode'
Plug 'hashivim/vim-terraform'
Plug 'pearofducks/ansible-vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'lervag/vimtex'

Plug 'godlygeek/tabular' "something with tabs
Plug 'junegunn/vim-easy-align' " easily align stuff
Plug 'mg979/vim-visual-multi' " visual studio code multi line select

Plug 'tpope/vim-fugitive' " git plugin
Plug 'vim-syntastic/syntastic' " syntax plugin
Plug 'sheerun/vim-polyglot' " other syntax
Plug 'neoclide/coc.nvim' " completion plugin

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline' " because default is ugly
Plug 'edkolev/tmuxline.vim' " sets tmux line to match style of vim airline
Plug 'tmux-plugins/vim-tmux-focus-events' " needed for vim fading
Plug 'christoomey/vim-tmux-navigator' " navigate between vim and tmux
Plug 'TaDaa/vimade' " fading for vim/tmux

" Initialize plugin system
call plug#end()

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>
map <F8> :Vista!!<CR>

let mapleader = ','
let localleader = '/'

set encoding=UTF-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline
set number        " line numbers
set mouse=a       " enable using mouse to move around and stuff
set noshowmode    " Disable showing mode because we use lightline
set tabstop=2 " softtabs 2 spaces
set shiftwidth=2 "softtabs 2 spaces
set shiftround " softtabs 2 spaces
set expandtab " softtabs 2 spaces
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nojoinspaces " Use one space, not two, after punctuation

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

let g:coc_global_extensions=[ 'coc-powershell', 'coc-json', 'coc-vimtex', 'coc-sh', 'coc-python', 'coc-xml', 'coc-yaml', 'coc-actions', 'coc-html', 'coc-omnisharp', 'coc-markdownlint', 'coc-rls', 'coc-go', 'coc-prettier', 'coc-docker' ]

" Styling
set termguicolors
let g:onedark_hide_endofbuffer = 1
let &fcs='eob: ' " delete tildes on empty lines, we have line numbers anyway
" syntax on
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
au VimEnter * Tmuxline airline_insert

let g:NERDTreeMinimalUI = 1
let g:NERDTreeMarkBookmarks = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeStatusline=''
hi NERDTreeCwd ctermfg=75 guifg=#98c379
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:vimade = {}
let g:vimade.fadelevel = 0.7
let g:vimade.enablesigns = 1
let g:vimade.enablefocusfading = 1
au FocusLost * VimadeFadeActive
au FocusGained * VimadeUnfadeActive

let g:tex_flavor = 'latex'

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.5}}
let g:fzf_preview_window = 'right:60%'

au VimEnter * NERDTreeToggle | wincmd p
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
