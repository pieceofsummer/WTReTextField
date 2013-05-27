//
//  WTViewController.m
//  WTReTextField
//
//  Created by Alex Skalozub on 5/5/13.
//  Copyright (c) 2013 Alex Skalozub.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

#import "WTViewController.h"
#import "WTReTextField.h"

@interface WTViewController ()

@end

@implementation WTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _cardNumber.pattern = @"^(\\d{4}(?: )){3}\\d{4}$";
    _cardholder.pattern = @"^[a-zA-Z ]{3,}$";
    _validUntil.pattern = @"^(1[0-2]|(?:0)[1-9])(?:/)\\d{2}$";
    _cvv.pattern = @"^\\d{3}$";
    
    _date.pattern = @"^(3[0-1]|[1-2][0-9]|(?:0)[1-9])(?:\\.)(1[0-2]|(?:0)[1-9])(?:\\.)[1-9][0-9]{3}$";
    _time.pattern = @"^(2[0-3]|1[0-9]|(?:0)[0-9])(?::)([0-5][0-9])$";
}


@end
