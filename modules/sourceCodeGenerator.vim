" Routines required by text rendering functions
function! AddToDoc(dataToAdd) abort
  execute 'normal i'.a:dataToAdd
endfunction

" check suggestion spelling, and make suggestions with input method instead of
" functions
function! Suggest(msg) abort
  echo 'Suggestion: '.a:msg
endfunction

function! GenerateVariableWithScope() abort
  let scopeSelection = input('var/let/const Pick 1/2/3: ')
  let scopeOptions = ['var', 'let', 'const']
  let scopeSelected = scopeOptions[scopeSelection-1]

  let varName = input('Name of Variable: ')
  let varValue = input('Value of Variable: ')
  
  call AddToDoc(scopeSelected.' '.varName.' = '.varValue.';')
endfunction

function! GenerateLabel() abort
  let labelName = input('Name of Label: ')
  call AddToDoc(labelName.':{}')
endfunction

function! LoopOverRange() abort
  let initialCounterValue = input('Initial Counter Value: ')
  let counterLimitCompatative = input('Comparative (<10)/(>5)/(==20): ')
  let counterIterationValue = input('Counter Iteration Value (++/+2/-3): ') 
  call AddToDoc('for (let i='.initialCounterValue.'; i'.counterLimitCompatative.'; i'.counterIterationValue.'){}')
endfunction

function! LoopOverMembers() abort
  call Suggest('Give the name of an already declared array, for example: myList | myArray | myArr')
  let arrayToIterateOver = input('Array to Iterate Over: ')
  call AddToDoc('for (let m of '.arrayToIterateOver.'){}')
endfunction

function! LoopOverIndices() abort
  call Suggest('Give the name of an already declared array, for example: myList | myArray | myArr')
  let arrayToIterateOver = input('Array to Iterate Over: ')
  call AddToDoc('for (let i in '.arrayToIterateOver.'){}')
endfunction

function! ForLoop() abort
  let loopTypeSelectionInShelfItemNumber = input('Loop over Range/Members/Indices Pick 1/2/3: ')
  let loopTypesShelf = [ 'loopOverRange', 'loopOverMembers', 'loopOverIndices' ]
  let loopSelection = loopTypesShelf[loopTypeSelectionInShelfItemNumber-1]
"""""""'' Used for debugging and issues """"""""""""""""""""""'
"  let loopTypesVSLoopsInJavaScript = {
"    \  loopTypesShelf[0]:'for',
"    \  loopTypesShelf[1]:'forOf',
"    \  loopTypesShelf[2]:'forIn',
"    \}
"  get( loopTypesVSLoopsInJavaScript, 'LoopOverIndices') "forIn
""""""""""""""""""""""""""""""'
  if loopSelection == loopTypesShelf[0] "for
    call LoopOverRange()
  elseif loopSelection == loopTypesShelf[1] "forOf
    call LoopOverMembers()
  elseif loopSelection == loopTypesShelf[2] "forIn
    call LoopOverIndices()
  endif
endfunction

function! GenerateArray() abort
  let arrayName = input('Name of Array: ')
  let numberOfMembersInArray = input('Number of Members in Array: ')
  call AddToDoc('let '.arrayName.' = [ ')

  let i = 0
  while i < numberOfMembersInArray
    let valueOfNthMember = input('Value of '.i.'th member: ')
    call AddToDoc(valueOfNthMember." ")
    if i < numberOfMembersInArray-1
      call AddToDoc(', ')
    endif
    let i = i+1
  endwhile

    call AddToDoc('];')
endfunction

function! GenerateLog() abort
  let valueToLog = input('Value to log: ')
  call AddToDoc('console.log('.valueToLog.');')
endfunction

function! GenerateTimer() abort
  let intervalName = input('IntervalName: ')
  let intervalLength = input('interval length in ms: ')
  call AddToDoc('const '.intervalName.' = setInterval(function(){/*code-here*/},'.intervalLength.');')
endfunction

function! SplitArray() abort
  call Suggest('Name an array you have already declared')
  let arrayName = input('Array Name: ')
  let splitByCharacter = input('Split by character: ')
  call AddToDoc(arrayName.'.split("'.splitByCharacter.'")')
endfunction

function! MapArray() abort
  call Suggest('Name an array you have already declared')
  call Suggest('console.log("This is an " + element)')
  let arrayName = input('Array Name: ')
  let expressionToExecute = input('Expression to execute per iteration: ')
  call AddToDoc(arrayName.'.map(element => '.expressionToExecute.');')
endfunction

" add more from simply es6


" End of routine list
" " Break suggestion into echo on preceding line
" " Make all featurs monolithic
