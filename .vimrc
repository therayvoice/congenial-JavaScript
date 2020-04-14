let mapleader = ","

" for snippits
nnoremap <leader>fun :-1read $HOME/.vim/.jsfunction.js<CR>wi
nnoremap <leader>funcon :-1read $HOME/.vim/.jsfuncon.js<CR>wi
nnoremap <leader>for :-1read $HOME/.vim/.jsfor.js<CR>8wa
nnoremap <leader>si :-1read $HOME/.vim/.jsintv.js<CR>2jwi
nnoremap <leader>con :-1read $HOME/.vim/.jscon.js<CR>3wla

inoremap <c-z>fun <esc>:-1read $HOME/.vim/.jsfunction.js<CR>wi
inoremap <c-z>funcon <esc>:-1read $HOME/.vim/.jsfuncon.js<CR>wi
inoremap <c-z>for <esc>:-1read $HOME/.vim/.jsfor.js<CR>8wa
inoremap <c-z>si <esc>:-1read $HOME/.vim/.jsintv.js<CR>2jwi
inoremap <c-z>con <esc>:-1read $HOME/.vim/.jscon.js<CR>3wla
