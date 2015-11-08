runtime bundle/pathogen/autoload/pathogen.vim

execute pathogen#infect()

set background=dark
colorscheme solarized

set laststatus=2
set ruler
set number
set cursorline
set hlsearch
let g:Powerline_colorscheme='solarized256'

syntax enable
syntax on

filetype indent on 
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

inoremap { {}<ESC>i<CR><ESC>ko
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

set ignorecase
set smartcase
map <C-n> :NERDTree<CR>
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序""""""
map <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .<CR><CR>:TlistUpdate<CR>
imap <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .<CR><CR>:TlistUpdate<CR>

set tags=/usr/include/c++/4.8.4/tags
set tags+=./tags
filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->""

let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"""""""
