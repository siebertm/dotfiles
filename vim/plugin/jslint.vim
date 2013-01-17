function! JSLintV8(hide_empty)
				set lazyredraw
				" Close any existing cwindows.
				cclose
				let l:grepformat_save = &grepformat
				let l:grepprogram_save = &grepprg
				set grepformat&vim
				set grepformat&vim
				let &grepformat = '%f(%l):%m'
				" let &grepprg = "jsl -nologo -nofilelisting -nosummary -nocontext -conf /etc/jsl.conf -process"
				let &grepprg = "$HOME/.vim/bin/jslint.rb"

				if &readonly == 0 | update | endif
				silent! grep! %
				let &grepformat = l:grepformat_save
				let &grepprg = l:grepprogram_save
				let l:mod_total = 0
				let l:win_count = 1


        if (len(getqflist()) > 0 || !a:hide_empty)
          " Determine correct window height
          execute 'belowright copen'
          nnoremap <buffer> <silent> c :cclose<CR>
          set nolazyredraw
          redraw!
        end

endfunction

function! JSLintQuick(hide_empty)
				set lazyredraw
				" Close any existing cwindows.
				cclose
				let l:grepformat_save = &grepformat
				let l:grepprogram_save = &grepprg
				set grepformat&vim
				set grepformat&vim
				let &grepformat = '%f(%l):%m'
				let &grepprg = "jsl -nologo -nofilelisting -nosummary -nocontext -conf /etc/jsl.conf -process"

				if &readonly == 0 | update | endif
				silent! grep! %
				let &grepformat = l:grepformat_save
				let &grepprg = l:grepprogram_save
				let l:mod_total = 0
				let l:win_count = 1


        if (len(getqflist()) > 0 || !a:hide_empty)
          " Determine correct window height
          execute 'belowright copen'
          nnoremap <buffer> <silent> c :cclose<CR>
          set nolazyredraw
          redraw!
        end

endfunction

command! -nargs=0 -complete=command JSLintQuick call JSLintQuick(0)

if ( !hasmapto('JSLintV8k(0)') && (maparg('<F3>') == '') )
  map <F3> :call JSLintV8(0)<CR>
  map! <F3> :call JSLintV8(0)<CR>
  autocmd BufWritePost,FileWritePost *.js call JSLintV8(1)
  autocmd BufWritePost,FileWritePost *.json call JSLintV8(1)
else
  if ( !has("gui_running") || has("win32") )
    echo "JSLint Error: No Key mapped.\n".
          \ "<F3> is taken and a replacement was not assigned."
  endif
endif

