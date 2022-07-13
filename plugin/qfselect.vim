nnoremap <silent> <Plug>(qfselect-select:edit)               :<C-u>call qfselect#select('edit', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:edit:keep-cursor)   :<C-u>call qfselect#select('edit', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:split)              :<C-u>call qfselect#select('split', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:split:keep-cursor)  :<C-u>call qfselect#select('split', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:vsplit)             :<C-u>call qfselect#select('vsplit', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:vsplit:keep-cursor) :<C-u>call qfselect#select('vsplit', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:above)              :<C-u>call qfselect#select('leftabove split', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:above:keep-cursor)  :<C-u>call qfselect#select('leftabove split', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:below)              :<C-u>call qfselect#select('rightbelow split', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:below:keep-cursor)  :<C-u>call qfselect#select('rightbelow split', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:left)               :<C-u>call qfselect#select('leftabove vsplit', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:left:keep-cursor)   :<C-u>call qfselect#select('leftabove vsplit', 1)<CR>

nnoremap <silent> <Plug>(qfselect-select:right)              :<C-u>call qfselect#select('rightbelow vsplit', 0)<CR>
nnoremap <silent> <Plug>(qfselect-select:right:keep-cursor)  :<C-u>call qfselect#select('rightbelow vsplit', 1)<CR>
