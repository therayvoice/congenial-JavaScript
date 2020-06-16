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

" importing modules
so ~/.vim/after/ftplugin/javascript/congenial-JavaScript/modules/sourceCodeGenerator.vim
so ~/.vim/after/ftplugin/javascript/congenial-JavaScript/modules/tests.vim

" The following stuff is used to generate code
nnoremap ,test :call TestStart()<cr>
nnoremap ,outline <esc><c-w>n:-1read /home/ray/.vim/after/ftplugin/javascript/docs/outline.txt<cr><cr>
nnoremap ,var :call GenerateVariableWithScope()<cr>
nnoremap ,label :call GenerateLabel()<cr>
nnoremap ,loop :call ForLoop()<cr>
nnoremap ,array :call GenerateArray()<cr>
nnoremap ,log :call GenerateLog()<cr>
nnoremap ,timer :call GenerateTimer()<cr>
nnoremap ,split :call SplitArray()<cr>
nnoremap ,map :call MapArray()<cr>

" fix the folllowing features
" nnoremap ,label //LabelName: {<cr>  //add stuff here<cr>}<esc>2<up>v7<right> 
" nnoremap ,var let varName = "value";<esc>9<left>v6<right>
" nnoremap ,array let arrName = [1,2,3];<esc>17<left>v6<right>


