" start of the default statusline
"set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" end of default statusline (with ruler)
"set statusline+=%=%(%l,%c%V\ %=\ %P%)

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
      \ "mode": "active",
      \ "passive_filetypes": ["vue"] }

function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . cfg : ''
endfunction

" autocmd FileType javascript let b:syntastic_javascript_jscs_args =
"     \ get(g:, 'syntastic_javascript_jscs_args', '') .
"     \ FindConfig('-c', '.jscsrc', expand('<amatch>:p:h', 1))

" let g:syntastic_javascript_checkers = ['jscs']
let g:syntastic_javascript_checkers = ['standard']

autocmd bufwritepost *.js silent !standard --fix %
set autoread
