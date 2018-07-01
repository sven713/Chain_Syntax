//
//  SVESumManager.m
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "SVESumManager.h"

@interface SVESumManager ()

@end

@implementation SVESumManager
- (SVESumManager *(^)(int inputNumberaaa))add {
    
//    SVESumManager *(^ablock)(int) =
    
    return ^SVESumManager *(int inptNum){
        self.result = self.result + inptNum;  // 循环引用?
        return self;
    };;
}
@end
