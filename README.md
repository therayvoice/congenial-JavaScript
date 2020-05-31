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

Congenial-JavaScript
====================
Congenial JavaScript is a Vim plugin for writing maximum JavaScript with minimum typing. The plugin has no dependencies. The inifial goal is to aid programmers and coders with Carpal Tunnel and disabilities.

Guidelines to Install
---
1. Use `git clone https://github.com/Ray6464/congenial-JavaScript`.
2. In the cloned directory there is a file named `congenial-JavaScript.vim`, put this file in your `~/.vim/after/ftplugin/javascript/` directory. You also use a symbolic linke with `ln -s url/to/congenial-JavaScript.vim ~/.vim/after/ftplugin/javascript/congenial-JavaScript.vim`.
3. In the cloned directory there is a directory named `.congenial` (it may be hidden), put this directory in `~/.vim/after/ftplugin/javascript/`. This too can be a symbolic link.
4. Now use `vim someFile.js` to open a JavaScript file, here use `:scriptnames` to see scripts activated for this buffer, you should see this script.
5. Use `CTRL+i` then `fn` to see the magic.

Congenial Coding Practices
--------------------------
The philosophy behind Congenial Coding Practices is to write the most amount of code with the least amount of typing.
 The Incantation is prefixed with `CTRL+i`.
 The Incantations are written following a very specific scheme:
 1. Every Incantation is two characters only.
 2. To reduce the strain on your hands the left had types a character and the right types another. Of course, we can type with any hand we want.
 3. The first letter of the first word of a code-block's name becomes the first character of an Incantation.
 4. The second character of the Incantation is anything we can type with the opposite-hand.
 For example, to write a `function` use `<CTRL+i>fn`, here `CTRL` is pressed with the left hand, `i` is pressed with the right, then `f` with left, and `n` with the right.
 For example to write a `function + console.log()` use `<CTRL+i>fl`, here `CTRL` is pressed with the left hand, `i` is pressed with the right, then `f` with left, and `l` with the right.
 This system is not perfect, but it's the one I have used to cope with my carpel tunnel for a long time. If you have suggestions for an alternative system raise an issue on GitHub.
 Lastly we have a expension feature for abbreviations, if you type con and press space it will turn into console.log(); for func ==> function , etc.


Congenial JavaScript has the following features
-----------------------------------------------
1. Common abbreviations like Writing `con` and pressing space turns `con` into `console.log(`.
2. Similar short-hand for both Normal-mode and Insert-mode.
3. Normal-mode shorthand is triggered with a `,`.
4. Insert-mode shorthand is triggred with an `CTRL+i`.
5. Useful Input/Critisim is always welcome.
6. If you contribute make sure to put your name and email in the contributers.md file. Check out other COngenial libraries (under development).

### Abbreiviations
1. `con` ==> `console.log(`.
2. `func` ==> `function`.

## Following Commands are present for JavaScript in Normal-mode
1. `,fn` for **F**unctio**n**s.
2. `,fl` for **F**unctions with a console.**l**og.
3. `,fo` for **Fo**r loop.
4. `,si` for **S**et**I**nterval.
5. `,co` for **co**nsole.log.

## Following Commands are present for JavaScript in Insert-mode
1. `Ctrl+i` + `fn` for **F**unctio**n**s.
2. `Ctrl+i` + `fl` for **F**unctions with a console.**l**og.
3. `Ctrl+i` + `fo` for **Fo**r loop.
4. `Ctrl+i` + `si` for **S**et**I**nterval.
5. `Ctrl+i` + `co` for **co**nsole.log.

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

