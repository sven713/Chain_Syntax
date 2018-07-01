//
//  BViewController.m
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)dismissBlock:(void(^)(NSString *someStr))dismissCallBack {
    if (dismissCallBack) {
        NSString *disMissStr = [NSString stringWithFormat:@"消失的是啥:%@",NSStringFromClass([self class])];
        dismissCallBack(disMissStr);
    }
}
@end
