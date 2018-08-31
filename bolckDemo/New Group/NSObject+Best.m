//
//  NSObject+Best.m
//  bolckDemo
//
//  Created by 苏文潇 on 2018/8/19.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import "NSObject+Best.h"

@implementation NSObject (Best)

- (NSArray *)XG_MakeDirection:(void(^)(Manager *mgr))block{
    Manager *mgr = [[Manager alloc] init];
    block(mgr);
    return [mgr install];
}

@end
