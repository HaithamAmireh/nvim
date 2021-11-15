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

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
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
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ray-x/aurora'
Plug 'liuchengxu/vim-clap'
Plug 'glepnir/dashboard-nvim'
call plug#end()

" Mappings
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-p> :Prettier<CR>
nmap <C-m> :%s/\"/'/g<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <silent> gd <Plug>(coc-definition)
call togglerb#map("<F9>")
" EndOfMappings

:colorscheme aurora

hi Normal guibg=NONE ctermbg=NONE
highlight ColorColumn ctermbg=red guibg=none

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:dashboard_default_executive ='clap'
