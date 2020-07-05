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
" The philosophy behind Congenial Coding Practices is to write the most amount of code with the least amount of typing. The initial idea was to develop an Emmett for Programming.

" importing modules
so ~/.vim/after/ftplugin/javascript/congenial-JavaScript/modules/sourceCodeGenerator.vim
so ~/.vim/after/ftplugin/javascript/congenial-JavaScript/modules/tests.vim

" The following stuff is used to generate code
nnoremap ,test :call TestStart()<cr>
nnoremap ,outline <esc><c-w>n:-1read /home/ray/.vim/after/ftplugin/javascript/congenial-JavaScript/docs/outline.txt<cr><cr>
nnoremap ,var :call GenerateVariableWithScope()<cr>
nnoremap ,label :call GenerateLabel()<cr>
nnoremap ,loop :call GenerateForLoop()<cr>
nnoremap ,array :call GenerateArray()<cr>
nnoremap ,log :call GenerateLog()<cr>
nnoremap ,timer :call GenerateTimer()<cr>
nnoremap ,split :call SplitArray()<cr>
nnoremap ,map :call MapArray()<cr>
nnoremap ,loarray :call GenerateLoopOverArray()<cr>
" needs code for Array.filter()

" The following stuff is used to generate code
inoremap <c-y>test <esc>:call TestStart()<cr>
inoremap <c-y>outline <esc><c-w>n:-1read /home/ray/.vim/after/ftplugin/javascript/congenial-JavaScript/docs/outline.txt<cr><cr>
inoremap <c-y>var <esc>:call GenerateVariableWithScope()<cr>
inoremap <c-y>label <esc>:call GenerateLabel()<cr>
inoremap <c-y>loop <esc>:call GenerateForLoop()<cr>
inoremap <c-y>array <esc>:call GenerateArray()<cr>
inoremap <c-y>log <esc>:call GenerateLog()<cr>
inoremap <c-y>timer <esc>:call GenerateTimer()<cr>
inoremap <c-y>split <esc>:call SplitArray()<cr>
inoremap <c-y>map <esc>:call MapArray()<cr>
inoremap <c-y>loarray <esc>:call GenerateLoopOverArray()<cr>
" needs code for Array.filter()

