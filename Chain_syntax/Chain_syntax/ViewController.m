//
//  ViewController.m
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Sum.h"
#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int result = [self sve_sum:^(SVESumManager *manager) { // manager在block内部初始化好了,外面只要调用manager的功能
        manager.add(10).add(50);
    }];
    
    NSLog(@"运算结果-%d",result);
    
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    BViewController *vc = [[BViewController alloc] init];
//    [self presentViewController:vc animated:YES completion:nil];
//    [vc dismissBlock:^(NSString *someStr) {
//        NSLog(@"说的啥?%@",someStr);
//    }];
//}

@end
