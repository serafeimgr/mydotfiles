call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'williamboman/nvim-lsp-installer'
call plug#end()


colorscheme dracula
set clipboard=unnamed
set cmdheight=2
set colorcolumn=80
set confirm
set expandtab
set list
set mouse=a
set noerrorbells
set noswapfile
set nowrap
set number
set relativenumber
set scrolloff=8
set shiftwidth=4
set sidescrolloff=8
set smartcase
set smartindent
set spell
set tabstop=4 softtabstop=4
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile
syntax on

lua saga = require 'lspsaga'
lua null_ls = require 'null-ls'
lua local sources = {null_ls.builtins.code_actions.shellcheck, null_ls.builtins.diagnostics.shellcheck, null_ls.builtins.formatting.shellcheck}
lua null_ls.setup({ name = 'null-lsap', sources = sources })

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <leader>r :Rg<CR>

xnoremap > >gv
xnoremap < <gv
xnoremap p "_dP
xnoremap Y y$

let g:gitgutter_highlight_lines = 1
set updatetime=100 
