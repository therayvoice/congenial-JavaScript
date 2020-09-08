" --- Function to render text on to file ---
function! AddToDoc(dataToAdd, ...) abort
  execute 'normal i'.a:dataToAdd
  " a:1 aka first argument is used to add new line at the end
  if a:0 > 0
    if a:1 == "newLine"
      execute 'normal o'
    endif
  endif
endfunction
" ------------------------------------------

function! IsTest(args) abort
  if a:args > 0
    return v:true
  else
    return v:false
  endif
endfunction

function! NewLine(...) abort
    execute 'normal o'
endfunction

function! GenerateVariableWithScope(...) abort
  if IsTest(a:0)
    let scopeSelection = a:1 " 1 | 2 | 3
    let varName = a:2
    let varValue = a:3
  else
    let scopeSelection = input('var/let/const Pick 1/2/3: ')
    let varName = input('Name of Variable: ')
    let varValue = input('Value of Variable: ')
  endif
  let scopeOptions = ['var', 'let', 'const']
  let scopeSelected = scopeOptions[scopeSelection-1]
  call AddToDoc(scopeSelected.' '.varName.' = '.varValue.';')
endfunction

function! GenerateLabel(...) abort
  if IsTest(a:0)
    let labelName = a:1
  else
    let labelName = input('Name of Label: ')
  endif
  call AddToDoc(labelName.':{}')
endfunction

function! LoopOverRange(...) abort
  if IsTest(a:0)
    let initialCounterValue = a:1
    let counterLimitCompatative = a:2
    let counterIterationValue = a:3
  else
    let initialCounterValue = input('Initial Counter Value: ')
    let counterLimitCompatative = input('Comparative (<10)/(>5)/(==20): ')
    let counterIterationValue = input('Counter Iteration Value (++/+2/-3): ') 
  endif
  call AddToDoc('for (let i='.initialCounterValue.'; i'.counterLimitCompatative.'; i'.counterIterationValue.'){}')
endfunction

function! LoopOverMembers(...) abort
  if IsTest(a:0)
    call AddToDoc('for (let m of '.a:1.'){}')
  else
    let arrayToIterateOver = input('Array to Iterate Over: ')
    call AddToDoc('for (let m of '.arrayToIterateOver.'){}')
  endif
endfunction

function! LoopOverIndices(...) abort
  if IsTest(a:0)
    call AddToDoc('for (let i in '.a:1.'){}')
  else
    let arrayToIterateOver = input('Array to Iterate Over: ')
    call AddToDoc('for (let i in '.arrayToIterateOver.'){}')
  endif
endfunction

function! GenerateForLoop(...) abort
  if IsTest(a:0)
    let loopTypeSelectionIndex = a:1
  else
    let loopTypeSelectionIndex = input('Loop over Range/Members/Indices Pick 1/2/3: ')
  endif
  let loopTypesShelf = [ 'loopOverRange', 'loopOverMembers', 'loopOverIndices' ]
  let loopSelection = loopTypesShelf[loopTypeSelectionIndex-1]
  if IsTest(a:0)
    "---------------------------------------------------
    if loopSelection == loopTypesShelf[0] "for
      call LoopOverRange(0, "<10", "++")
    elseif loopSelection == loopTypesShelf[1] "forOf
      call LoopOverMembers("myLoop")
    elseif loopSelection == loopTypesShelf[2] "forIn
      call LoopOverIndices("myLoop")
    endif
    "---------------------------------------------------
  else
    "---------------------------------------------------
    if loopSelection == loopTypesShelf[0] "for
      call LoopOverRange()
    elseif loopSelection == loopTypesShelf[1] "forOf
      call LoopOverMembers()
    elseif loopSelection == loopTypesShelf[2] "forIn
      call LoopOverIndices()
    endif
    "---------------------------------------------------
  endif
endfunction

function! GenerateArray(...) abort
  if IsTest(a:0)
    let arrayName = a:1
    let numberOfMembersInArray = a:2
  else
    let arrayName = input('Name of Array: ')
    let numberOfMembersInArray = input('Number of Members in Array: ')
  endif
  call AddToDoc('let '.arrayName.' = [ ')

  let i = 0
  while i < numberOfMembersInArray
    
    if IsTest(a:0)
      let valueOfNthMember = a:3 + i
    else
      let valueOfNthMember = input('Value of '.i.'th member: ')
    endif

    call AddToDoc(valueOfNthMember." ")

    if i < numberOfMembersInArray-1
      call AddToDoc(', ')
    endif

    let i = i+1
  endwhile

    call AddToDoc('];')
endfunction

function! GenerateLog(...) abort
  if IsTest(a:0)
    let valueToLog = a:1
  else
    let valueToLog = input('Value to log: ')
  endif
  call AddToDoc('console.log('.valueToLog.');')
endfunction

function! GenerateTimer(...) abort
  if IsTest(a:0)
    let intervalName = a:1
    let intervalLength = a:2
  else
    let intervalName = input('IntervalName: ')
    let intervalLength = input('interval length in ms: ')
  endif
  call AddToDoc('const '.intervalName.' = setInterval(function(){/*code-here*/},'.intervalLength.');')
endfunction

function! SplitArray(...) abort
  if IsTest(a:0)
    let arrayName = a:1
    let splitByCharacter = a:2
  else
    let arrayName = input('Array Name: ')
    let splitByCharacter = input('Split by character: ')
  endif
  call AddToDoc(arrayName.'.split("'.splitByCharacter.'");')
endfunction

function! MapArray(...) abort
  if IsTest(a:0)
    let arrayName = a:1
    let expressionToExecute = a:2
  else
    let arrayName = input('Array Name: ')
    let expressionToExecute = input('Expression to execute per iteration: ')
  endif
  call AddToDoc(arrayName.'.map(element => '.expressionToExecute.');')
endfunction

function! GenerateLoopOverArray(...) abort
  if IsTest(a:0)
    let arrayName = a:1
  else
    let arrayName = input('Array Name: ')
  endif
  call AddToDoc(arrayName.'.forEach((member, index, thisArray)=>{')
  call NewLine()
  call AddToDoc('  console.log (index, member, thisArray);')
  call NewLine()
  call AddToDoc('});')
endfunction

function! ObjectWriter(objectChoices, index, preCode, postCode) abort
  let objectChoice = a:objectChoices[a:index]
  call AddToDoc(a:preCode.objectChoice.a:postCode)
endfunction

function! GenerateBuiltInVariables() abort
  let objectChoices = ['console', 'global', 'process', 'window', 'document']
  let objectChoiceIndex = input('console/global/process/window/document'.' Pick 1/2/3/etc: ')
  call ObjectWriter(objectChoices, objectChoiceIndex-1, '', '')
endfunction
 
function! GenerateProcessVariables() abort
  let objectChoices = ['argv', 'env', 'emitWarning()', 'pid', 'platform', 'arch']
  let objectChoiceIndex = input('argv/env/emitWarning/pid/platform/arch'.' Pick 1/2/3/etc: ')
  call ObjectWriter(objectChoices, objectChoiceIndex-1, 'process.', '')
endfunction

function! GenerateEventVariables() abort
  let objectChoices = ['exit', 'beforeExit', 'abort']
  let objectChoiceIndex = input('Events exit/beforeExit/abort Pick 1/2/3/etc: ')
  let objectChoice = objectChoices[objectChoiceIndex-1]
  call AddToDoc('process.on("'.objectChoice.'",function() {});')
endfunction

function! GenerateEventEmitter() abort
  call AddToDoc("const { EventEmitter } = require('events')")
  call NewLine()
  call AddToDoc('const eventEmitter = new EventEmitter();')
  call NewLine()
  call AddToDoc("eventEmitter.on('launch', () => {")
  call NewLine()
  call AddToDoc("console.log('Server launched')")
  call NewLine()
  call AddToDoc("})")
  call NewLine()
  call AddToDoc("eventEmitter.emit('launch')")
endfunction

function! GenerateHTTPServerCode() abort
  let serverPort = input("Which port to use (8080, 3000, etc.): ")
    
  call AddToDoc("var http = require('http');")
  call NewLine()
  call NewLine()
  call AddToDoc("http.createServer(function (req, res) {", "newLine")
  call AddToDoc("  res.writeHead(200, {'Content-Type': 'text/html'});", "newLine")
  call AddToDoc("  res.write('server at ".serverPort." is up');", "newLine")
  call AddToDoc("  return res.end();", "newLine")
  call AddToDoc("}).listen(".serverPort.");", "newLine")
endfunction

function! GenerateFSModuleCode() abort
" needs more methods
  let fsMethods = input('(1) Read File, (2) Write File 1/2: ')
  let blocking = input('blocking (sync) or non-blocking (async) 1/2: ')
  let fileName = input('fileName: ')

  if fsMethods == '2'
    let textOutput = input('What text do you want written to that file: ')
    let dataVarName = input('Name of the variable that will store data: ')
  endif

  if fileName == ''
    let fileName = './database.json'
  endif

  if blocking == '1'
    if fsMethods == '1'
      call AddToDoc("const { readFileSync } = require('fs');", "newLine")
      call AddToDoc("const txt = readFileSync('".fileName."', 'utf8');", "newLine")
      call AddToDoc("console.log(txt);", "newLine")
    elseif fsMethods == '2'
      call AddToDoc("const { writeFileSync } = require('fs');", "newLine") 
      call AddToDoc("const ".dataVarName." = new Uint8Array(Buffer.from('".textOutput."'));", "newLine") 
      call AddToDoc("writeFileSync('".fileName."', ".dataVarName.");", "newLine") 
    endif
  elseif blocking == '2'
    if fsMethods == '1'
      call AddToDoc("const { readFile } = require('fs');", "newLine")
      call AddToDoc("readFile('".fileName."', 'utf8', (err, txt)=>{", "newLine")
      call AddToDoc("  console.log(txt);", "newLine")
      call AddToDoc("});", "newLine")
    elseif fsMethods == '2'
      call AddToDoc("const { writeFile } = require('fs');", "newLine") 
      call AddToDoc("const ".dataVarName." = new Uint8Array(Buffer.from('".textOutput."'));", "newLine") 
      call AddToDoc("writeFile('".fileName."', ".dataVarName.", (err) => {", "newLine") 
      call AddToDoc("  if (err) throw err;", "newLine")
      call AddToDoc("  console.log('The file has been saved!');", "newLine") 
      call AddToDoc("});", "newLine")
    endif
  endif
endfunction

function! GenerateRequire() abort
  let moduleName = input("Module Name: ")
  let moduleImportedAs = input("Import data as: ")

  if moduleName == ''
  " for defaultModule.js located in the project's root
    let moduleName = './defaultModule'
  endif

  if moduleImportedAs == ''
    let moduleImportedAs = moduleName
  endif

  call AddToDoc("const ".moduleName." = require('".moduleImportedAs."');", "newline")
endfunction

function! AddProp() abort
  let propName = input("Prop Name: ")
  let propValue = input("Prop value: ")
  call AddToDoc('  '.propName.': '.propValue.',', 'newLine')
  let morePropPrompt = input("Add another Prop? y/n: ")
  if morePropPrompt == "y"
    call AddProp()
  endif
endfunction

function! GenerateExport() abort
  call AddToDoc('module.exports = {', "newLine")
  call AddProp()
  call AddToDoc('}', "newLine")
endfunction

function! GenerateExpressServer() abort
  call AddToDoc("const express = require('express');", 'newLine')
  call AddToDoc("const app = express();", 'newLine')
  call NewLine()
  call AddToDoc("app.get('/', (req, res) => {", 'newLine')
  call AddToDoc("  res.sendFile('index.html', {root: __dirname});", 'newLine')
  call AddToDoc("});", 'newLine')
  call NewLine()
  call AddToDoc("const port = process.env.PORT || 8080;", 'newLine')
  call AddToDoc("app.listen(port, ()=>{console.log(`System Online: ${port}`)});", 'newLine')
  " needs code for res.status(404).send('') //etc
  " needs support for async and await to avoid `callback hell` and use
  " promises
endfunction

function! GenerateExpressGet() abort
  let node = input("Node home/aboutme/etc: ")
  " node css is accessable as ./css from html files
  let fileURL = input('name and URL of File index.html/main.css/etc: ')
  " needs support for async and await
  call AddToDoc("app.get('".node."', (req, res) => {", 'newLine')
  call AddToDoc("  res.sendFile('".fileURL."', {root: __dirname});", 'newLine')
  call AddToDoc('});', 'newLine')
endfunction

