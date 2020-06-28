let g:lightline = {
  \ 'active': {
  \   'right':[
  \     [ 'lineinfo', 'linecount' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'linecount': 'MyLineCount',
  \ }
\ }

function! MyLineCount()
  return line('$')
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  if winwidth(0) < 60
    return ''
  endif

  if len(blame) > 60
    return blame[:56] . ' .. '
  else
    return blame
  endif
endfunction
