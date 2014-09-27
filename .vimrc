syntax on
filetype plugin indent on
let fortran_do_enddo=1
compiler! gfortran

set smartindent
set autoindent
set expandtab
set tabstop=3
set shiftwidth=3

" Save all and build
map <F7> :wall \| make all<Cr>

" Run executable
map <F8> :make run<Cr>

" Go to next error
map <F6> :cn<Cr>zvzz:cc<Cr>

" Go to previous error
map <F5> :cp<Cr>zvzz:cc<Cr>
