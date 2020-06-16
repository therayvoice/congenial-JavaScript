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
Congenial-JavaScript can be thought of as Emmett-vim for JavaScript.

Guidelines to Install
---
1. Use `git clone https://github.com/Ray6464/congenial-JavaScript`.
2. In a terminal goto `~/.vim/after/ftplugin/javascript/`. Make these directories if they are absent.
3. Make a symbolic-link to the cloned directory with `ln -s ~/path/to/cloned/directory congenial-JavaScript`.
4. Now open a JavaScript file in Vim, like `vim something.js` and try out the magic.

Congenial JavaScript has the following features
-----------------------------------------------
1. Similar short-hand for both Normal-mode and Insert-mode.
2. Normal-mode shorthand is triggered with a `,`.
3. Insert-mode shorthand is triggred with an `CTRL+i`.
4. Upon trigger a command Vim will prompt you for a few things, when answered properls 

## Following Commands are present for JavaScript in Normal-mode
1. `,var` to generate variables with scopes.
2. `,label` to generate labels.
3. `,loop` to generate loops that can loop over range, indices, members, etc.
4. `,array` for array.
5. `,split` and `,map` for array methods.
6. more comming soon.

Contribution
------------
1. Useful Input/Critisim is always welcome.
2. If you contribute make sure to put your name and email in the contributers.md file. Check out other Congenial libraries (under development).

License
=======
MIT License

**Copyright (c) 2020 Ray**

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

