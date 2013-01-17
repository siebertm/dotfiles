
command! JSONBeautify :call JSONBeautify()

function JSONBeautify()
  :%! python -mjson.tool
endfunction
