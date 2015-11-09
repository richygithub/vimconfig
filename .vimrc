runtime bundle/pathogen/autoload/pathogen.vim

execute pathogen#infect()
let mapleader=";"
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

map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <leader>n :MBEbn<cr>
map <leader>p :MBEbp<cr>

map <F5> :!ctags -R --sort=yes --c++-kinds=+p+l --fields=+liaS --extra=+q --language-force=C++ .<CR><CR>:TlistUpdate<CR>
imap <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .<CR><CR>:TlistUpdate<CR>

set tags=/usr/include/tags
set tags+=./tags
filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->""

let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"""""""


" YCM 补全菜单配色
" " 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" " 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" " 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" " 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" " 引入 C++ 标准库tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
" " YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" " 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" " 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" " 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" " 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1""""""""""""
