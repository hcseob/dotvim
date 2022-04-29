set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = "," " needs to proceed any commands that mapped with leader

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my plugins
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on "
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpd.ate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" additional verilog_systemverilog.vim settings (see git from documentation)
set foldmethod=syntax
nnoremap <leader>i :VerilogFollowInstance<CR>
nnoremap <leader>I :VerilogFollowPort<CR>
nnoremap <leader>u :VerilogGotoInstanceStart<CR>
" :VerilogErrorFormat vcs 2
" :set makeprg=vcs\ -full64\ %
" :cnext
" :cprevious

nnoremap <leader>a :!emacs --batch % -f verilog-batch-auto<CR> :e<CR>
nnoremap <leader>d :!emacs --batch % -f verilog-batch-delete-auto<CR> :e<CR>


"colorscheme evening
colorscheme monokai
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

