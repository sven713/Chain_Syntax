//
//  NSObject+Sum.m
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "NSObject+Sum.h"

@implementation NSObject (Sum)
- (int)sve_sum:(void(^)(SVESumManager *manager))mgr {
    SVESumManager *sumManager = [[SVESumManager alloc] init]; // 外面调用get方法,会调用SVESumManager的累加方法
    mgr(sumManager); // 执行mgr这个block  block作为参数,外部赋值,里面调用 sumManager是mgr这个block的参数
    return sumManager.result;
}


@end
