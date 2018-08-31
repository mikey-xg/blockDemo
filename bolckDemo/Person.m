//
//  Person.m
//  bolckDemo
//
//  Created by 苏文潇 on 2018/7/29.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void(^)(void))block{
    return ^{
        NSLog(@"哈哈哈");
    };
}
- (void(^)(int num))block1{
    return ^(int num1){
        NSLog(@"%d", num1);
    };
}


- (Person *(^)(int num))block2{
    __block int res = _result;
    
    return ^(int num1){
        res = num1 + res;
        NSLog(@"%d", res);
        return self;
    };
}


@end
