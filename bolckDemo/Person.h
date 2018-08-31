//
//  Person.h
//  bolckDemo
//
//  Created by 苏文潇 on 2018/7/29.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic ,assign) int result;
- (void(^)(void))block;
- (void(^)(int num))block1;
- (Person *(^)(int num))block2;

@end
