function! autest#b#call1(name) abort
  return autest#a#call2(a:name)
endfunction

function! autest#b#success() abort
  return 'success'
endfunction
