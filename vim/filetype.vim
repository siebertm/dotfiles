if exists("did\_load\_filetypes")
 finish
endif

augroup markdown
 au! BufRead,BufNewFile *.mkd   setfiletype mkd
 au! BufRead,BufNewFile *.markdown   setfiletype mkd
augroup END

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

au BufNewFile,BufRead *.ejs			set filetype=jst
