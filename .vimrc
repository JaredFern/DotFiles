" Install Vim-Plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'ajh17/vimcompletesme'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'edkolev/tmuxline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'jremmen/vim-ripgrep'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'kopischke/vim-fetch'
    Plug 'mg979/vim-visual-multi'
    Plug 'preservim/nerdtree'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'sheerun/vim-polyglot'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/taglist.vim'
call plug#end()

let Tlist_Use_Split_Window = 1
let Tlist_Exit_OnlyWindow=1
" com TT NERDTreeToggle | TlistToggle

au VimEnter * NERDTreeToggle


syntax on
set autoindent
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set t_Co=256
set ts=4 sw=4 expandtab
set mouse=a
set clipboard=unnamedplus

set number
set splitright
set background=dark

colorscheme onedark
let g:airline_theme='deus'
let g:airline_powerline_fonts = 64
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart


" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" FZF settings
nnoremap <c-p> :GFiles<cr>
let g:fzf_action = {
  \ 'enter': 'vsplit',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
autocmd VimEnter * wincmd w
