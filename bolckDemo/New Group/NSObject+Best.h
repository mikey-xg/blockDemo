//
//  NSObject+Best.h
//  bolckDemo
//
//  Created by 苏文潇 on 2018/8/19.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"
@interface NSObject (Best)

- (NSArray *)XG_MakeDirection:(void(^)(Manager *mgr))block;

@end
