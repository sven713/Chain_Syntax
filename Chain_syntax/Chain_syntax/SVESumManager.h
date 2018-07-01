//
//  SVESumManager.h
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SVESumManager : NSObject
- (SVESumManager *(^)(int inputNumberaaa))add;
@property (nonatomic, assign) int result;
@end
