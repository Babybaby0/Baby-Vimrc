" ==========================================================================================
" 编码设置
" ==========================================================================================
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,ucs-bom,cp936
set fileencoding=utf-8
language messages zh_CN.utf-8

"-------------------------------------------------------------------------------------------
"解决菜单乱码
"-------------------------------------------------------------------------------------------
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" ==========================================================================================
" GUI
" ==========================================================================================
:set number

" ------------------------------------------------------------------------------------------
" 启动的时候不显示那个援助乌干达儿童的提示
" ------------------------------------------------------------------------------------------
set shortmess=atI

" ------------------------------------------------------------------------------------------
" 不要图形按钮
" ------------------------------------------------------------------------------------------
"set go=
call pathogen#infect()
set nocompatible
let g:neocomplcache_enable_at_startup = 1
set shiftwidth=4
set autoindent
" set smartindent "
set nowrap
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
behave mswin
set ts=4
set expandtab
set diffexpr=MyDiff()
set guifont=Consolas:h12
set novisualbell    " 不要闪烁(不明白)  
set wrap
filetype plugin on
let OmniCpp_DefaultNamespaces=[ "std "]
set tags+="F:\vim插件\ctags58\tags\cppTags\stltags"
set tags+="F:\vim插件\ctags58\tags\cppTags\cpptags"
set tags=tags;
set autochdir
syntax enable
set background=dark
colorscheme solarized
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
let g:indent_guides_indent_levels = 30
let g:indent_guides_auto_colors = 1 "设置对齐线
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_color_change_percent = 30
"在行尾空格显示特殊字符
set list " 显示特殊符号
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
let python_highlight_all=1
syntax on

"---------------alrLine Config--------------
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
let g:bufferline_echo=0
set laststatus=2
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    set nocompatible               " be iMproved
     filetype off                   " required!

     set rtp+=~/.vim/bundle/vundle/
     call vundle#rc()

     " let Vundle manage Vundlex
     " required!
     Bundle 'gmarik/vundle'
     " My Bundles here:
     " original repos on github
     Bundle 'tpope/vim-fugitive'
     Bundle 'Lokaltog/vim-easymotion'
     Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}x
     Bundle 'tpope/vim-rails.git'x
     " vim-scripts reposx
     Bundle 'L9'x
     Bundle 'FuzzyFinder'x
     " non github reposx
     Bundle 'git://git.wincent.com/command-t.git'  
     Bundle 'scrooloose/nerdtree'
     Bundle 'https://github.com/nathanaelkane/vim-indent-guides'

     filetype plugin indent on     " required!  
     "
     " Brief help
     " :BundleList          - list configured bundles
     " :BundleInstall(!)    - install(update) bundles
     " :BundleSearch(!) foo - search(or refresh cache first) for foo  
     " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles  
     "  
     " see :h vundle for more details or wiki for FAQ  
     " NOTE: comments after Bundle command are not allowed..      else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
filetype off
" 此处规定Vundle的路径
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')
Bundle 'gmarik/vundle'
filetype plugin indent on

" original repos on github<br>Bundle 'mattn/zencoding-vim'
Bundle 'drmingdrmer/xptemplate'
 
"vim-scripts仓库里的，按下面格式填写
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'Mark'
Bundle 'The-NERD-tree'
Bundle 'matrix.vim'
Bundle 'closetag.vim'
Bundle 'The-NERD-Commenter'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'jsbeautify'
Bundle 'YankRing.vim'
Bundle 'tagbar'
Bundle 'JSON.vim'
Bundle 'python_fold.vim'
"补全空格
Bundle 'AutoClose'
"别人家的插件
Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-markdown'
Bundle 'bling/vim-airline'
"补全
Bundle 'vim-scripts/Syntastic'
"智能折叠
Bundle 'tmhedberg/SimpyFold'
Plugin 'kien/ctrlp.vim'
filetype plugin indent on     " required!

