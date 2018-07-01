//
//  NSObject+Sum.h
//  Chain_syntax
//
//  Created by sve on 2018/7/1.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVESumManager.h"

@interface NSObject (Sum)
- (int)sve_sum:(void(^)(SVESumManager *manager))mgr;

@end
