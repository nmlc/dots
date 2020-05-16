let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_regex_pattern = 1

let g:ctrlsf_auto_focus = {
  \ "at": "done"
  \ }
let g:ctrlsf_auto_close = {
    \ "normal" : 1,
    \ "compact": 1
    \}
nnoremap <space>fs :CtrlSF<Cr>
nnoremap <space>fn :CtrlSF 
nnoremap <space>ff :CtrlSFToggle<Cr>
nmap <space>fp <Plug>CtrlSFPwordPath
let g:ctrlsf_ackprg = 'rg'
