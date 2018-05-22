//
//  ViewController.m
//  HYButtonTest
//
//  Created by  huiyuan on 2018/5/22.
//  Copyright © 2018年 张宇超. All rights reserved.
//

#import "ViewController.h"
#import "HYUnderlineButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     n第一种方法
     */
//    HYUnderlineButton *button = [HYUnderlineButton buttonWithType:UIButtonTypeCustom];
//    [button setTitle:@"这是一个测试" forState:UIControlStateNormal];
//    [button setBackgroundColor:[UIColor redColor]];
//    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [button setColor:[UIColor blackColor]];
//    button.titleLabel.font = [UIFont systemFontOfSize:15];
//    [self.view addSubview:button];
//    [button setFrame:CGRectMake(100, 100, 200, 30)];
    
    /**
     第二种方法
     */
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"这是一个测试" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor greenColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:button];
    [button setFrame:CGRectMake(100, 100, 200, 30)];
    
    //button 折行显示设置
    /*
     NSLineBreakByWordWrapping = 0,         // Wrap at word boundaries, default
     NSLineBreakByCharWrapping,     // Wrap at character boundaries
     NSLineBreakByClipping,     // Simply clip 裁剪从前面到后面显示多余的直接裁剪掉
     
     文字过长 button宽度不够时: 省略号显示位置...
     NSLineBreakByTruncatingHead,   // Truncate at head of line: "...wxyz" 前面显示
     NSLineBreakByTruncatingTail,   // Truncate at tail of line: "abcd..." 后面显示
     NSLineBreakByTruncatingMiddle  // Truncate middle of line:  "ab...yz" 中间显示省略号
     */
    button.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    // you probably want to center it
    button.titleLabel.textAlignment = NSTextAlignmentCenter; // if you want to
//    button.layer.borderColor = [UIColor blackColor].CGColor;
//    button.layer.borderWidth = 1.0;
    
    // underline Terms and condidtions
    NSMutableAttributedString* tncString = [[NSMutableAttributedString alloc] initWithString:@"View Terms and Conditions"];
    
    //设置下划线...
    /*
     NSUnderlineStyleNone                                    = 0x00, 无下划线
     NSUnderlineStyleSingle                                  = 0x01, 单行下划线
     NSUnderlineStyleThick NS_ENUM_AVAILABLE(10_0, 7_0)      = 0x02, 粗的下划线
     NSUnderlineStyleDouble NS_ENUM_AVAILABLE(10_0, 7_0)     = 0x09, 双下划线
     */
    [tncString addAttribute:NSUnderlineStyleAttributeName
                      value:@(NSUnderlineStyleSingle)
                      range:(NSRange){0,[tncString length]}];
    //此时如果设置字体颜色要这样
    [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]  range:NSMakeRange(0,[tncString length])];
    
    //设置下划线颜色...
    [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:(NSRange){0,[tncString length]}];
    [button setAttributedTitle:tncString forState:UIControlStateNormal];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
