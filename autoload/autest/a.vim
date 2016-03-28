function! autest#a#call1(name) abort
  return autest#b#call1(a:name)
endfunction

function! autest#a#call2(name) abort
  try
    " NOTE:
    " The following raise E15: Invalid expression
    " if a:name does not exists
    "return autest#b#{a:name}()
    return call('autest#b#' . a:name, [])
  catch /^Vim\%((\a\+)\)\=:E117/
    return 'a function does not exist'
  catch
    return v:exception
  endtry
endfunction
