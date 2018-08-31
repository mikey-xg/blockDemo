//
//  Manager.m
//  bolckDemo
//
//  Created by 苏文潇 on 2018/8/19.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import "Manager.h"


@implementation Manager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arr = [NSMutableArray array];
        _tempArr = [NSMutableArray array];
        _resultArr = [NSMutableArray array];
    }
    return self;
}

-(Manager *(^)(int))add{
    return ^(int value){
        [self->_arr addObject:@(value)];
        return self;
    };
}


-(Manager *)left{
    return [self appendType: XGChoseTypeLeft];
}
-(Manager *)right{
    return [self appendType: XGChoseTypeRight];
}
-(Manager *)top{
    return [self appendType: XGChoseTypeTop];
}
-(Manager *)bottom{
    return [self appendType: XGChoseTypeBottom];
}

-(Manager *(^)(BOOL))equalTo{
    return ^(BOOL value){
        for (int i = 0; i<self->_tempArr.count; i ++) {
            [self->_resultArr addObject:@(value)];
        }
        [self->_tempArr removeAllObjects];
        return self;
    };
}

- (Manager *)appendType:(XGChoseType)type{
    TypeInfo *info = [[TypeInfo alloc] init];
    [_tempArr addObject: @([info getInfoDirectionWithType:type])];
    return self;
}


- (NSArray *)install{
    return self.resultArr;
}

@end


//TypeInfo
@implementation TypeInfo


- (int)getInfoDirectionWithType: (XGChoseType)type{
    
    if (type == XGChoseTypeLeft){
        return 1;
    }else if (type == XGChoseTypeRight){
        return 2;
    }else if (type == XGChoseTypeTop){
        return 3;
    }else if (type == XGChoseTypeBottom){
        return 4;
    }else{
        return 0;
    }
}

@end




