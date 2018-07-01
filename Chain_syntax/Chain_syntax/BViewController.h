//
//  BViewController.h
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BViewController : UIViewController

- (void)showBlock:(void(^)(UIColor *viewColor))callBack;

@property (nonatomic, copy) void(^colorBlock)(UIColor *color);

@end
