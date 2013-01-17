function! MakeAndCheck()
        set makeprg=make\ -C\ ../build
				set lazyredraw
				" Close any existing cwindows.
				cclose

				if &readonly == 0 | update | endif
				silent! make

        if (len(getqflist()) > 0)
          " Determine correct window height
          execute 'belowright copen'
          nnoremap <buffer> <silent> c :cclose<CR>
          set nolazyredraw
          redraw!
        end
endfunction

command! -nargs=0 -complete=command MakeAndCheck call MakeAndCheck()

map <leader>m :MakeAndCheck<CR>

