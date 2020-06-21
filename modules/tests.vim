"----------------------
let numberOfTestsPassed = 0
"----------------------

"----------------------
let numberOfTestsFailed = 0
"----------------------

function! Report(functionName) abort
  let g:numberOfTestsPassed = g:numberOfTestsPassed + 1
  let result = "Report: The Function [".a:functionName."] is working.     (PASS)"
  call WriteToFile(result)
endfunction

function! Error(functionName) abort
  let g:numberOfTestsFailed = g:numberOfTestsFailed + 1
  let result = "Error: The Function [".a:functionName."] is not working.     (FAIL)"
  call WriteToFile(result)
endfunction

function! WriteToFile(data) abort
  " Test Report is saved in the local project Dir
  call writefile([a:data], "testReport.txt", "a") " appends logs to file
endfunction

function! WriteTestHeaderToFile() abort
 call WriteToFile('')
 call WriteToFile('----------------------')
 call WriteToFile(strftime('%c'))
 call WriteToFile('----------------------')
endfunction

function! ReadTestReport() abort
  " Opens Test Report in a New Vim Window
  execute "new ./testReport.txt" 
endfunction

"function! ClearFile() abort
"  execute 'normal ggdG'
"endfunction

function! NextLine() abort
  execute 'normal o'
endfunction

" each test is ran on a diffrent lineNumber
"----------------------
let lineNumber = 1
"----------------------

function! GenerateReport(testName, expectedOutput) abort
  call WriteToFile('--------*Output: '.getline(g:lineNumber)."*--------")
  if getline(g:lineNumber) == a:expectedOutput
    call Report(a:testName)
  else
    call Error(a:testName)
  endif
  " lines are incremented here so the test-head moves from line #1 -> #2, #2 -> #3, ...
  let g:lineNumber = g:lineNumber + 1
endfunction

function! GenerateReportCount() abort
  let numberOfTests = g:lineNumber - 1
  call WriteToFile("Number of Tests performed: ".numberOfTests)
  call WriteToFile("Number of Tests Passed: ".g:numberOfTestsPassed)
  call WriteToFile("Number of Tests Failed: ".g:numberOfTestsFailed)
endfunction

function! TestAddToDoc() abort
  let testName = "AddToDoc"
  call AddToDoc("Hello World")
  call GenerateReport(testName, "Hello World")
endfunction

function! TestGenerateVariableWithScope() abort
  let testName = "GenerateVariableWithScope"
  let expectedOutput1 = "var Health = 100;"
  let expectedOutput2 = "let alive = true;"
  let expectedOutput3 = "const class = 'hero';"
  call GenerateVariableWithScope(1, "Health", 100)
  call NextLine()
  call GenerateVariableWithScope(2, "alive", "true")
  call NextLine()
  call GenerateVariableWithScope(3, "class", "'hero'")
  call GenerateReport(testName, expectedOutput1)
  call GenerateReport(testName, expectedOutput2)
  call GenerateReport(testName, expectedOutput3)
endfunction

function! TestGenerateLabel() abort
  let testName = "GenerateLabel"
  let labelName = "QATests"
  let expectedOutput = labelName.":{}"
  call GenerateLabel(labelName)
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestGenerateForLoop() abort
  let testName = "GenerateForLoop"
  let expectedOutput1 = "for (let i=0; i<10; i++){}"
  let expectedOutput2 = "for (let m of myLoop){}"
  let expectedOutput3 = "for (let i in myLoop){}"
  call GenerateForLoop(1)
  call NextLine()
  call GenerateForLoop(2)
  call NextLine()
  call GenerateForLoop(3)
  call GenerateReport(testName, expectedOutput1)
  call GenerateReport(testName, expectedOutput2)
  call GenerateReport(testName, expectedOutput3)
endfunction

function! TestStart()
  call WriteTestHeaderToFile()

  call TestAddToDoc()
  call NextLine()
  call TestGenerateVariableWithScope()
  call NextLine()
  call TestGenerateLabel()
  call NextLine()
  call TestGenerateForLoop()

  call GenerateReportCount()
  call ReadTestReport()
"  call ClearFile()
endfunction
