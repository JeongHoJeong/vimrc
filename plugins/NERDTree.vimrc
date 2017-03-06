colorscheme distinguished
autocmd VimEnter * NERDTree
set guioptions-=L
set guioptions-=r

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.swp$']

map <F3> :NERDTreeToggle<CR>
