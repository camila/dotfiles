set hlsearch
set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
colorscheme desert
set background=dark

set encoding=utf8
set ffs=unix,dos,mac


set nobackup
set nowb
set noswapfile

set expandtab
set shiftwidth=2
set tabstop=2

set lbr
set tw=500

set nowrap

syn match fatal "FATAL.*"
syn match error "ERROR.*"
syn match warn "WARN.*"
syn match info "INFO.*"
syn match debug "DEBUG.*"
syn match error ".*Exception.*"

" Highlight colors for log levels.
hi fatal ctermfg=Red ctermbg=Black
hi error ctermfg=Red ctermbg=Black
hi warn ctermfg=Yellow ctermbg=Black
hi info ctermfg=Green ctermbg=Black
hi debug ctermfg=Gray ctermbg=Black

let b:current_syntax = "log"
" vim: ts=2 sw=2
