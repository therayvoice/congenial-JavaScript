"   ____                             _       _       _                  ____            _       _   
"  / ___|___  _ __   __ _  ___ _ __ (_) __ _| |     | | __ ___   ____ _/ ___|  ___ _ __(_)_ __ | |_ 
" | |   / _ \| '_ \ / _` |/ _ \ '_ \| |/ _` | |  _  | |/ _` \ \ / / _` \___ \ / __| '__| | '_ \| __|
" | |__| (_) | | | | (_| |  __/ | | | | (_| | | | |_| | (_| |\ V / (_| |___) | (__| |  | | |_) | |_ 
"  \____\___/|_| |_|\__, |\___|_| |_|_|\__,_|_|  \___/ \__,_| \_/ \__,_|____/ \___|_|  |_| .__/ \__|
"                   |___/                                                                |_|        
" By
"  ____              __     __    _          
" |  _ \ __ _ _   _  \ \   / /__ (_) ___ ___ 
" | |_) / _` | | | |  \ \ / / _ \| |/ __/ _ \
" |  _ < (_| | |_| |   \ V / (_) | | (_|  __/
" |_| \_\__,_|\__, |    \_/ \___/|_|\___\___|
"             |___/                          
"
" The philosophy behind Congenial Coding Practices is to write the most amount of code with the least amount of typing.
" The Incantation is prefixed with `CTRL+i`.
" The Incantations are written following a very specific scheme:
" 1. Every Incantation is two characters only.
" 2. To reduce the strain on your hands the left had types a character and the right types another. Of course, we can type with any hand we want.
" 3. The first letter of the first word of a code-block's name becomes the first character of an Incantation.
" 4. The second character of the Incantation is anything we can type with the opposite-hand.
" For example, to write a `function` use `<CTRL+i>fn`, here `CTRL` is pressed with the left hand, `i` is pressed with the right, then `f` with left, and `n` with the right.
" For example to write a `function + console.log()` use `<CTRL+i>fl`, here `CTRL` is pressed with the left hand, `i` is pressed with the right, then `f` with left, and `l` with the right.
" This system is not perfect, but it's the one I have used to cope with my carpel tunnel for a long time. If you have suggestions for an alternative system raise an issue on GitHub.
" Lastly we have a expension feature for abbreviations, if you type con and press space it will turn into console.log(); for func ==> function , etc.

iabbrev con console.log(
iabbrev func function 

inoremap <c-i>fn <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfunction.js<CR>wi
inoremap <c-i>fl <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfuncon.js<CR>wi
inoremap <c-i>fo <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfor.js<CR>8wa
inoremap <c-i>si <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsintv.js<CR>2jwi
inoremap <c-i>co <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jscon.js<CR>3wla
" more comming

nnoremap ,fn <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfunction.js<CR>wi
nnoremap ,fl <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfuncon.js<CR>wi
nnoremap ,fo <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsfor.js<CR>8wa
nnoremap ,si <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jsintv.js<CR>2jwi
nnoremap ,co <esc>:-1read $HOME/.vim/after/ftplugin/javascript/.congenial/.jscon.js<CR>3wla
" more comming
