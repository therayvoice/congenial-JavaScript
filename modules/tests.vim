"----------------------
let numberOfTestsPassed = 0
let numberOfTestsFailed = 0
let headOverLineNumber = 1
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

function! NextLine() abort
  execute 'normal o'
endfunction

function! MoveHeadToNextLine() abort
  let g:headOverLineNumber = g:headOverLineNumber + 1
endfunction

function! GenerateReport(testName, expectedOutput) abort
  call WriteToFile('--------*Output: '.getline(g:headOverLineNumber)."*--------")
  if getline(g:headOverLineNumber) == a:expectedOutput
    call Report(a:testName)
  else
    call Error(a:testName)
  endif
  call MoveHeadToNextLine()
endfunction

function! GenerateMultiLineReport(testName, expectedOutputs) abort
  let linesInExpectedOutput = len(a:expectedOutputs)
  call WriteToFile('--------*Output: '.getline(g:headOverLineNumber)."...".(linesInExpectedOutput-1)." more lines*--------")
  let goodLines = 0

  for expectedOutput in a:expectedOutputs
    if getline(g:headOverLineNumber) == expectedOutput
      let goodLines = goodLines + 1
    endif
    call MoveHeadToNextLine()
  endfor

  if goodLines == linesInExpectedOutput
    call Report(a:testName)
  else
    call Error(a:testName)
  endif
endfunction

function! GenerateReportCount() abort
  let numberOfTests = g:numberOfTestsPassed + g:numberOfTestsFailed
  call WriteToFile("Number of Tests performed: ".numberOfTests)
  call WriteToFile("Number of Tests Passed: ".g:numberOfTestsPassed)
  call WriteToFile("Number of Tests Failed: ".g:numberOfTestsFailed)
  let g:headOverLineNumber = 0
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

function! TestGenerateLoopOverArray() abort
  let testName = "GenerateLoopOverArray"
  let line1 = 'myArray.forEach((member, index, thisArray)=>{'
  let line2 = '  console.log (index, member, thisArray);'
  let line3 = '});'
  let expectedOutputs = [line1, line2, line3]
  call GenerateLoopOverArray("myArray")
  call GenerateMultiLineReport(testName, expectedOutputs)
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
endfunction
