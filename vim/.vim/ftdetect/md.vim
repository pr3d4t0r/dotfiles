" Place this file in:  $HOME/.vim/ftdetect/md.vim

au BufRead,BufNewFile *.md   if &ft == 'modula2' | set ft=markdown | endif

