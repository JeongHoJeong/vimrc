" indentation adjustment in insert mode
inoremap <S-TAB> <C-D>
inoremap <C-TAB> <C-T>

" command-line favor line movement in insert mode
inoremap <C-A> <C-O>^
inoremap <C-E> <C-O>$

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

" remap Shift-Enter to exit insert mode
imap <S-CR> <ESC>

nnoremap <F2> :setlocal rnu!<CR>

" set current path as working directory
map <F4> :cd %:p:h<CR>

if has("gui_running")
  " for move between splits (Ctrl+Shift+Left, Ctrl+Shift+Up ...)
  nmap <C-S-RIGHT> <C-w><Right>
  nmap <C-S-LEFT> <C-w><Left>
  nmap <C-S-DOWN> <C-w><Down>
  nmap <C-S-UP> <C-w><Up>

  imap <C-S-RIGHT> <esc><C-w><Right>
  imap <C-S-LEFT> <esc><C-w><Left>
  imap <C-S-DOWN> <esc><C-w><Down>
  imap <C-S-UP> <esc><C-w><Up>
else
  " Ctrl-S for save
  nmap <C-S> :w<CR>
  imap <C-S> <ESC>:w<CR>
endif

if has("unix")
  let s:uname = system("uname -s")

  " if it's macOS
  if s:uname =~ "Darwin"
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
  endif
endif
