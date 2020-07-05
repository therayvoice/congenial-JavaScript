<pre>
   ____                             _       _       _                  ____            _       _     
  / ___|___  _ __   __ _  ___ _ __ (_) __ _| |     | | __ ___   ____ _/ ___|  ___ _ __(_)_ __ | |_   
 | |   / _ \| '_ \ / _` |/ _ \ '_ \| |/ _` | |  _  | |/ _` \ \ / / _` \___ \ / __| '__| | '_ \| __|  
 | |__| (_) | | | | (_| |  __/ | | | | (_| | | | |_| | (_| |\ V / (_| |___) | (__| |  | | |_) | |_   
  \____\___/|_| |_|\__, |\___|_| |_|_|\__,_|_|  \___/ \__,_| \_/ \__,_|____/ \___|_|  |_| .__/ \__|  
                   |___/                                                                |_|          
By  
  ____              __     __    _            
 |  _ \ __ _ _   _  \ \   / /__ (_) ___ ___   
 | |_) / _` | | | |  \ \ / / _ \| |/ __/ _ \  
 |  _ < (_| | |_| |   \ V / (_) | | (_|  __/  
 |_| \_\__,_|\__, |    \_/ \___/|_|\___\___|  
             |___/                            
</pre>

Congenial-JavaScript
====================
Congenial JavaScript is a Vim plugin for writing maximum JavaScript with minimum typing. The plugin has no dependencies. The initial goal is to aid programmers and coders with Carpal Tunnel and other disabilities.
Congenial-JavaScript can be thought of as Emmett-vim for JavaScript, it generates dynamic boilerplate code.

Guidelines to Install
---
1. Use `cd ~ && git clone https://github.com/Ray6464/congenial-JavaScript`.
2. In a terminal goto `~/.vim/after/ftplugin/javascript/`, make these directories if they are absent!
3. Make a symbolic-link to the cloned directory with `ln -s ~/path/to/cloned/directory congenial-JavaScript`.
4. Now open a JavaScript file in Vim, like `vim something.js` and try out the magic.

Congenial JavaScript has the following features
-----------------------------------------------
1. Similar key-bindings for both Normal-mode and Insert-mode.
2. Normal-mode key-bindings are preceded with a `,`.
3. Insert-mode key-bindings are preceded with an `CTRL+y`.
4. When triggred a command Vim will prompt you for a few things, when answered properls 

Key Bindings to generate Dynamic Boilerplate
--------------------------------------------
Command   |  Generates (JavaScript)     |  Requires input                                   |  Input Example
 ,outline  |  Outline of Features        |  -                                                |  -
 ,var      |  Variable                   |  Variable Name                                    |  health
 ,label    |  Label                      |  Label Name                                       |  - 
 ,loop     |  Loop                       |  Loop type, Loop details                          |  -
 ,array    |  Array                      |  Array Name, amount of members, member values     |  _
 ,log      |  Stdout aka console.log()   |  Value to log                                     |  "Hello World"
 ,timer    |  Timer Loops (setInterval)  |  Timer Name, inter length in ms                   |  -
 ,split    |  Array.split()              |  Array Name, Character to split at                |  myArray | ,
 ,map      |  Array.map()                |  Array Name, expression to execute each iteration |  console.log(element)
 ,loarray  |  Loop Over Array (forEach)  |  Array Name                                       |  myArray


Contribution
------------
The Project revolves around on 3 core files:
1. congenial-JavaScript.vim
2. modules/sourceCodeGenerator.vim
3. modules/tests.vim
Key-bindings are added in the 1st file.
The 1st file also activates all the modules.
The 2nd file has most of the source code for the generator functions.
The 3rd file has code for tests.
You can start contributing by either adding more features or by writing tests.
Useful Input/Critisim is always welcome.
If you contribute make sure to put your name and email in the contributers.md file. Check out other Congenial libraries (under development).

License
=======
MIT License

**Copyright (c) 2020 Ray Voice**

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

