let s:WindowSelector = vital#qfselect#import('App.WindowSelector')
let s:WindowLocator = vital#qfselect#import('App.WindowLocator')

function s:is_quickfix(wid) abort
  let info = getwininfo(a:wid)
  return !empty(info) && info[0].quickfix ==# 1
endfunction

function s:is_loclist(wid) abort
  let info = getwininfo(a:wid)
  return !empty(info) && info[0].loclist ==# 1 
endfunction

function s:get_entries(wid) abort
  if s:is_quickfix(a:wid)
    return getqflist()
  elseif s:is_loclist(a:wid)
    return getloclist(a:wid)
  else
    return []
  endif
endfunction

function s:open_buf(opener, entry, initial_wid, keep_cursor) abort
  let selected_wid = win_getid()

  exec a:opener . ' ' . bufname(a:entry.bufnr)
  call cursor(a:entry.lnum, a:entry.col)

  if a:keep_cursor
    " When opener includes split or vsplit,
    " the current window is differ from selected_win.
    " To enable users to move to selected_win by ^w^p
    " go to selected_win before going to a quickfix window.
    call win_gotoid(selected_wid)
    call win_gotoid(a:initial_wid)
  endif
endfunction

function qfselect#select(opener, keep_cursor) abort
  let initial_wid = win_getid()
  let entries = s:get_entries(initial_wid)
  if empty(entries)
    return
  endif

  let entry = entries[line('.') - 1]

  let wins = s:WindowLocator.list()
  if s:WindowSelector.select(wins)
    return
  endif

  call s:open_buf(a:opener, entry, initial_wid, a:keep_cursor)
endfunction
