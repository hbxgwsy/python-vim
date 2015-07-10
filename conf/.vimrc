set nocompatible              " be iMproved, required 
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/Tagbar'
Plugin 'vim-scripts/Python-mode-klen'
Plugin 'scrooloose/nerdtree'
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
" ======== General Setting ========
colorscheme desert
set number
set autochdir
set hlsearch
set splitbelow
set splitright
" Spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab
" ======== pymode settings ========
" Disable autofold
let g:pymode_folding = 0
" Keymap for autocomplete
let g:pymode_rope_completion_bind = '<S-Space>'
" Keymap for goto definition
let g:pymode_rope_goto_definition_bind = '<C-c>g'
" Enable searching for .ropeproject in parent directories
let g:pymode_rope_lookup_project = 1
" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" ======== NERD_Tree settings ========
" Map F2 for NERD_Tree
map <F2> :NERDTreeToggle<CR>
" Fix NERD_Tree arrow problem
let NERDTreeDirArrows = 0
" Close NERD_Tree after open file, set to 1
let NERDTreeQuitOnOpen=0
" Auto close NERD_Tree when it is the last buffer
function! NERDTreeQuit()
    redir => buffersoutput
    silent buffers
    redir END
   
    let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
    let windowfound = 0
   
    for bline in split(buffersoutput, "\n")
        let m = matchlist(bline, pattern)
       
        if (len(m) > 0)
            if (m[2] =~ '..a..')
                let windowfound = 1
            endif
        endif
    endfor
   
    if (!windowfound)
        quitall
    endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

