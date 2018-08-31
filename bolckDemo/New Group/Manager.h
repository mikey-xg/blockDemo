//
//  Manager.h
//  bolckDemo
//
//  Created by 苏文潇 on 2018/8/19.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import <Foundation/Foundation.h>

// 方向枚举
typedef NS_ENUM(NSInteger, XGChoseType) {
    XGChoseTypeLeft = 1,
    XGChoseTypeRight,
    XGChoseTypeTop,
    XGChoseTypeBottom
};



@interface Manager : NSObject
@property (nonatomic, assign) int result;
@property (nonatomic, copy) NSMutableArray *arr;
@property (nonatomic, copy) NSMutableArray *tempArr;
@property (nonatomic, copy) NSMutableArray *resultArr;
@property (nonatomic, copy) NSMutableArray<NSString *> *directionArr;
-(Manager *(^)(int))add;

-(Manager *)left;
-(Manager *)right;
-(Manager *)top;
-(Manager *)bottom;
-(Manager *(^)(BOOL))equalTo;
- (NSArray *)install;
@end



@interface TypeInfo : NSObject

@property (nonatomic, assign) int direction;
- (int)getInfoDirectionWithType: (XGChoseType)type;
@end
