execute pathogen#infect()
syntax on
filetype off

language en_US.UTF-8

" Solarized color theme
"let g:solarized_termtrans=1
"if has('gui_runing')
"				set background=light
"else
"				set background=dark
"endif
"colorscheme solarized

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/Syntastic'
Plugin 'elzr/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'sjl/gundo.vim'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'klen/python-mode'

Plugin 'git://git.wincent.com/command-t.git'

Plugin 'AutoComplPop'
"Plugin 'taglist-plus'
"
Plugin 'solarized'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

call vundle#end()


filetype plugin indent on

set nobackup
set ttyfast
set complete+=i
set confirm
set ignorecase
set smartcase
set showcmd
set title
set nu
set autoread
set wrap
"set smartindent
set hlsearch
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set colorcolumn=110

set encoding=utf-8
set fileencoding=utf-8

""" Syntasitc 설정하기
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"

""" NERDTree 설정하기 ##
" vim 시작시 자동으로 NERDTree 실행하기
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p

" vim 에서 마지막 tab 이 NERDTree 일때 자동으로 종료하기
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 

"" powerline 설정하기 "
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"set rtp+=~/.vim/bundle/powerline/
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'fancy'
set term=xterm-256color
set termencoding=utf-8

" enable all python syntax hightlight feature
let python_hightlight_all = 1

augroup vimrc_autocmds
  autocmd!
          " highlight characters past column 120
  autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
  autocmd FileType python match Excess /\%120v.*/
  autocmd FileType python set nowrap
augroup END
