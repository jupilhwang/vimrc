execute pathogen#infect()

syntax on
filetype plugin indent on

set number
set tabstop=2
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
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

" vim 에서 마지막 tab 이 NERDTree 일때 자동으로 종료하기
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 

"" powerline 설정하기 "
set laststatus=2
"let g:Powerline_symbols = 'fancy'
