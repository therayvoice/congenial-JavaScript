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
nnoremap ,gvar :call GenerateBuiltInVariables()<cr>
nnoremap ,pvar :call GenerateProcessVariables()<cr>
nnoremap ,event :call GenerateEventVariables()<cr>
nnoremap ,emit :call GenerateEventEmitter()<cr>
nnoremap ,server :call GenerateHTTPServerCode()<cr>
nnoremap ,fs :call GenerateFSModuleCode()<cr>
nnoremap ,require :call GenerateRequire()<cr>
nnoremap ,export :call GenerateExport()<cr>
nnoremap ,express :call GenerateExpressServer()<cr>
nnoremap ,appget :call GenerateExpressGet()<cr>

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
inoremap <c-y>gvar <esc>:call GenerateBuiltInVariables()<cr>
inoremap <c-y>pvar <esc>:call GenerateProcessVariables()<cr>
inoremap <c-y>event <esc>:call GenerateEventVariables()<cr>
inoremap <c-y>emit <esc>:call GenerateEventEmitter()<cr>
inoremap <c-y>server <esc>:call GenerateHTTPServerCode()<cr>
inoremap <c-y>fs <esc>:call GenerateFSModuleCode()<cr>
inoremap <c-y>require <esc>:call GenerateRequire()<cr>
inoremap <c-y>export <esc>:call GenerateExport()<cr>
inoremap <c-y>express <esc>:call GenerateExpressServer()<cr>
inoremap <c-y>appget <esc>:call GenerateExpressGet()<cr>


" needs code for Array.filter()

