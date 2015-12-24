//
//  ViewController.m
//  同一段文字显示多种颜色
//
//  Created by 刘浩浩 on 15/8/12.
//  Copyright (c) 2015年 Codeliu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel* noteLabel = [[UILabel alloc] init];
    noteLabel.frame = CGRectMake(60, 100, 200, 100);
    noteLabel.textColor = [UIColor blackColor];
    noteLabel.numberOfLines = 2;
    
    
    NSMutableAttributedString *noteStr = [[NSMutableAttributedString alloc] initWithString:@"注册:同意"];
    NSRange redRange = NSMakeRange([[noteStr string] rangeOfString:@"注册:"].location, [[noteStr string] rangeOfString:@"注册:"].length);
    [noteStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:redRange];
    
    NSRange redRangeTwo = NSMakeRange([[noteStr string] rangeOfString:@"同意"].location, [[noteStr string] rangeOfString:@"同意"].length);
    [noteStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:redRangeTwo];
    
    [noteLabel setAttributedText:noteStr];
    [noteLabel sizeToFit];
    [self.view addSubview:noteLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
