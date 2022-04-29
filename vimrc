set nocompatible              " be iMproved, required by Vundle
filetype off                  " required by Vundle
let mapleader = "," " needs to proceed any commands that mapped with leader

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my plugins
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'vimtaku/hl_matchit.vim'
Plugin 'sickill/vim-monokai'
Plugin 'ervandew/supertab'
Plugin 'preservim/tagbar'

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
runtime macros/matchit.vim
let g:SuperTabDefaultCompletionType='context'
let g:verilog_syntax_fold_lst="class,function,task,instance,module" 
" CTRL-X CTRL-O to use omni completion without SuperTab (ctags needs to be created) and just TAB with super tab
" echo ~/bin/ctags.sh > /usr/local/bin/ctags -R --extras=+q --fields=+i
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

