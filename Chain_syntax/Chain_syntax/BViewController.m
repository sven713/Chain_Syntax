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
    self.view.backgroundColor = [BViewController randomColor];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)showBlock:(void(^)(UIColor *viewColor))callBack {
    if (callBack) {
        callBack(self.view.backgroundColor);
    }
}

+(UIColor *) randomColor{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //0.0 to 1.0
    
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  // 0.5 to 1.0,away from white
    
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //0.5 to 1.0,away from black
    
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

-(void)setColorBlock:(void (^)(UIColor *))colorBlock{
    if (colorBlock) {
        colorBlock(self.view.backgroundColor);
    }
}

@end
