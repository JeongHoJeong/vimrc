" indentation adjustment in insert mode
inoremap <S-TAB> <C-D>
inoremap <C-TAB> <C-T>

" command-line favor line movement in insert mode
inoremap <C-A> <C-O>^
inoremap <C-E> <C-O>$

" traverse in insert mode with ALT + h, j, k, l, w, b
" they seem to be my mac-specific characters!
inoremap ˙ <C-O>h
inoremap ∆ <C-O>j
inoremap ˚ <C-O>k
inoremap ¬ <C-O>l
inoremap ∑ <C-O>w
inoremap ∫ <C-O>b
inoremap „ <C-O>W
inoremap ı <C-O>B

nnoremap ˙ h
nnoremap ∆ j
nnoremap ˚ k
nnoremap ¬ l
nnoremap ∑ w
nnoremap ∫ b
nnoremap „ W
nnoremap ı B

" line openers
inoremap <C-S-CR> <C-O>O
inoremap <C-CR> <C-O>o

nnoremap <C-S-CR> O<ESC>
nnoremap <C-CR> o<ESC>

" insert a space or a line break in normal mode
nnoremap <SPACE> i<SPACE><ESC>l
nnoremap <CR> i<CR><ESC>

" insert a single character in normal mode
nnoremap <C-I> i <ESC>r

if has("unix")
  let s:uname = system("uname -s")

  " if it's macOS
  if s:uname =~ "Darwin"
    " do some mac specific stuff here ...
  endif
endif
