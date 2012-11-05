syntax on
set ruler
set bs=2
set sw=2
set ts=2
set hls
colorscheme desert
if has('gui_macvim')
    set imdisable
endif
set mouse=a
set encoding=utf-8

set cin
command I normal gg=G

" Highlight cursor
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline
highlight CursorLine ctermbg=8 cterm=NONE


"
" File Type depedent
"
set filetype=on
filetype plugin on
filetype indent on


" SCHEME
autocmd FileType scheme set nocin
autocmd FileType scheme set lisp
autocmd FileType scheme set ai lisp
autocmd FileType scheme set ic lisp
autocmd FileType scheme command R !gsi %

" D
autocmd FileType d command R !dmd <  %
