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

function! GenerateMultiLineReport(testName, lineCount, expectedOutputs) abort
  call WriteToFile('--------*Output: '.getline(g:lineNumber)."*--------")
  let goodLines = 0

  for expectedOutput in expectedOutputs
    if getline(g:lineNumber) == expectedOutput
      let g:lineNumber = g:lineNumber + 1
      let goodLines = goodLines + 1
    endif
  endfor

  if goodLines == a:lineCount
    call Report(a:testName)
  else
    call Error(a:testName)
  endif
endfunction

function! GenerateReportCount() abort
  let numberOfTests = g:lineNumber - 1
  call WriteToFile("Number of Tests performed: ".numberOfTests)
  call WriteToFile("Number of Tests Passed: ".g:numberOfTestsPassed)
  call WriteToFile("Number of Tests Failed: ".g:numberOfTestsFailed)
  let g:lineNumber = 0
  let g:numberOfTestsPassed = 0
  let g:numberOfTestsFailed = 0
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

function! TestGenerateArray() abort
  let testName = "GenerateArray"
  let expectedOutput = "let myArray = [1,2,3];      "
  call GenerateArray("myArray", 3, 1, 2, 3)
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestSplitArray() abort
  let testName = "SplitArray"
  let expectedOutput = 'myArray.split(",");'
  call SplitArray("myArray", ",")
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestMapArray() abort
  let testName = "MapArray"
  let expectedOutput = 'myArray.map(element => console.log(element));'
  call MapArray("myArray", "console.log(element)")
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestGenerateTimer() abort
  let testName = "GenerateTimer"
  let expectedOutput = "const myTimer = setInterval(function(){/*code-here*/},1000);"
  call GenerateTimer("myTimer", 1000)
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestGenerateLog() abort
  let testName = "GenerateLog"
  let expectedOutput = 'console.log("Hello World");'
  call GenerateLog('"Hello World"')
  call GenerateReport(testName, expectedOutput)
endfunction

function! TestGenerateLoopOverArray() about
  let testName = "GenerateLoopOverArray"
  let line1 = 'myArray.forEach((member, index, thisArray)=>{'
  let line2 = '  console.log (index, member, thisArray);'
  let line3 = '});'
  let expectedOutputs = [line1, line2, line3]
  let linesInCode = 3
  call GenerateLoopOverArray("myArray")
  call GenerateMultiLineReportReport(testName, 3, expectedOutputs)
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
  call NextLine()
  call TestGenerateArray()
  call NextLine()
  call TestSplitArray()
  call NextLine()
  call TestMapArray()
  call NextLine()
  call TestGenerateTimer()
  call NextLine()
  call TestGenerateLog()
  call NextLine()
  call TestGenerateLoopOverArray()
" add more tests here

  call GenerateReportCount()
  call ReadTestReport()
"  call ClearFile()
endfunction
