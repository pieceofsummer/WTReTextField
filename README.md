WTReTextField
=============

You often need user to input some kind of formatted data:
- credit card number (4 groups of 4 digits divided with space, and user don't really want to type those spaces)
- date and time (and UIDatePicker is not really good enough for birthdays or expiration dates)
- sum with thousand separators
- phone number
- email address
- and many others

UITextField doesn't really limit user input, so you need to do some validation afterwards, which is really annoying for multiple similar fields.

WTReTextField is designed to validate and format user input while typing. It uses a regular expression pattern with quite familliar syntax.

## Requirements
iOS5 or later, ARC

## Usage

1. Copy contents of `WTReTextField` folder into your project.
2. Include `WTReTextField.h` into your view.
3. Drag UITextField onto your view in the interface builder.
4. Set required properties as you wish.
5. Set custom class `WTReTextField` for it, and link with corresponding property of your view controller.
6. Set pattern for your field in `-(void)viewDidLoad`.

## Regular Expression Syntax

This control implements a subset of default regular expression grammar.

There are a few limitations:
- Zero-width assertions (lookaheads, lookbehinds) and balancing groups are not implemented.
- Pattern should start with `^` and end with `$`. Starts/ends in the middle of pattern (like `(,|$)+`) are not supported.
- Named groups are supported, but their names are not really used.
- Non-capturing groups with single literal (e.g. `(?: )` for space) are considered _dividers_ and are inserted automatically if omitted while typing.
- Comments and other junk are not supported.
- Pattern is treated as single line, so `.` matches any character including `\n`.

## License
MIT License

Copyright (c) 2013 Alex Skalozub

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
IN THE SOFTWARE.
