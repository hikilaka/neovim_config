if &compatible
    set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    
    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#add('zchee/deoplete-clang')
    call dein#add('rhysd/vim-clang-format')
    call dein#add('arakashic/chromatica.nvim')
    call dein#add('itchyny/lightline.vim')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

set noswapfile
set hidden
set nofoldenable
set number
set ignorecase
set smartcase
set noshowmode

set laststatus=2
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set mouse=a

let g:deoplete#sources#clang#libclang_path='/usr/lib/x86_64-linux-gnu/libclang-7.so.1'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'
let g:deoplete#sources#clang#std={'c': 'c11', 'cpp': 'c++2a'}
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1

let g:chromatica#libclang_path=g:deoplete#sources#clang#libclang_path
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1

let g:lightline={'colorscheme': 'powerline'}

let g:clang_format#code_style='llvm'
let g:clang_format#command='/usr/bin/clang-format-7'
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1
nmap <F5> :ClangFormatAutoToggle<CR>

