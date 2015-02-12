function! whitespace#strip_trailing()

  " maintain cursor position and prev. search
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')

  " strip trailing whitespace
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction
