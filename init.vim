:set number
:set relativenumber
:set noerrorbells
:set tabstop=4
:set softtabstop=4
:set autoindent
:set shiftwidth=4
:set smarttab
:set mouse=a
:set signcolumn=yes
:set colorcolumn=80
:set autoindent
:set expandtab
:set nowrap
:set scrolloff=5
" :set termguicolors
:set cursorline
:set spelllang=en_us
:set splitbelow splitright

call plug#begin()
Plug 'https://github.com/preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/Rigellute/shades-of-purple.vim'
Plug 'https://github.com/ray-x/aurora'
Plug 'liuchengxu/vim-clap'
Plug 'glepnir/dashboard-nvim'
Plug 'https://github.com/machakann/vim-colorscheme-imas'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/morhetz/gruvbox'
call plug#end()

" Mappings
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-p> :Prettier<CR>
nmap <C-m> :%s/\"/'/g<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <silent> gd <Plug>(coc-definition)
inoremap \\ <Esc>
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" EndOfMappings

" Looks
:colorscheme aurora

hi Normal guibg=NONE ctermbg=NONE
highlight ColorColumn ctermbg=gray
" End

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:dashboard_default_executive ='clap'
let g:rainbow_active = 1
highlight CursorLine ctermbg=darkGray
