# python-vim
Configure Vim as Python IDE
## python-vim Overview
This project will help you to configure your Vim as python IDE. Follow plugins are installed:
* Plugin '[scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)'
* Plugin '[vim-scripts/Tagbar](https://github.com/vim-scripts/Tagbar)'
* Plugin '[vim-scripts/Python-mode-klen](https://github.com/vim-scripts/Python-mode-klen)'

More plugins could be found from [vim-scripts].
[vim-scripts]: http://vim-scripts.org/vim/scripts.html
## Installation Guide
* Clone this project and execute run.sh
```BASH
git clone https://github.com/fs714/python-vim.git
cd python-vim
./run.sh
```
* Open Vim and execute PluginInstall
```BASH
:PluginInstall
```    
## User Guide
### Nerdtree
The NERD tree allows you to explore your filesystem and to open files and directories. Press **F2** will open/close nerdtree window.
### Tagbar
Tagbar is a vim plugin for browsing the tags of source code files. Press **F3** will open/close tagbar window.
### Python-mode
Python-mode is a vim plugin that helps you to create python code very quickly by utilizing libraries including pylint, rope, pydoc, pyflakes, pep8, and mccabe for features like static analysis, refactoring, folding, completion, documentation, and more.
####  How to get help
```
:help pymode
```
#### How to new a project
```
# Open new Rope project
:PymodeRopeNewProject
# Regenerate the project cache
:PymodeRopeRegenerate
```
#### Default Keys
```
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
```
#### Disable autofold
```
let g:pymode_folding = 0
```
#### Some useful vim keys
* Make current window higher
```
Ctrl + w
5
+
```
* Make current window wider
```
Ctrl + w
5
>
```

