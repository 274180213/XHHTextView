//
//  ViewController.m
//  XHHTextView
//
//  Created by mac on 2017/4/20.
//  Copyright © 2017年 XHH. All rights reserved.
//

#import "ViewController.h"
#import "XHHTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
    
}
-(void)test
{
   XHHTextView * textView = [XHHTextView textView];
    textView.maxLength = 30;
    textView.frame = CGRectMake(10, 64, 300, 300);
    textView.borderColor = [UIColor lightGrayColor];
    textView.borderWidth = 0.5;
    textView.placeholder = @"我是占位符";
    textView.placeholderColor = [UIColor yellowColor];
    textView.placeholderFont = [UIFont systemFontOfSize:14];
    [textView addTextDidChangeHandler:^(XHHTextView *textView) {
        NSLog(@"正在输入:%@",textView.text);
    }];
    [textView addTextLengthDidMaxHandler:^(XHHTextView *textView) {
        NSLog(@"最大限制:%ld",textView.text.length);
    }];
    [self.view addSubview:textView];
}
@end
