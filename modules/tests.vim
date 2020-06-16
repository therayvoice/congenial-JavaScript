function! Report(functionName) abort
  echo "Report: The Function [".a:functionName."] is working.     (PASS)"
endfunction

function! Error(functionName) abort
  echo "Error: The Function [".a:functionName."] is not working.     (FAIL)"
endfunction

function! ClearFile() abort
  execute 'normal ggdG'
endfunction

function! TestAddToDoc() abort
  let testName = "AddToDoc"
  call AddToDoc("Hello World")
  if getline("1") == "Hello World"
    call Report(testName)
  else
    call Error(testName)
  endif
endfunction

function! TestStart()
  call TestAddToDoc()
  call ClearFile()
endfunction
