//
//  ViewController.m
//  bolckDemo
//
//  Created by 苏文潇 on 2018/7/29.
//  Copyright © 2018年 bestsu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <Masonry.h>

#import "NSObject+Best.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectZero];
    demoView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:demoView];
    
   [demoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(@10);
        make.right.bottom.equalTo(@-10);
    }];
    
}

-(void)demo1{
    
    NSArray *arr = [self XG_MakeDirection:^(Manager *mgr) {
        mgr.left.right.equalTo(YES);
        mgr.bottom.top.equalTo(NO);
    }];
    
    NSLog(@"%@", arr);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self demo1];
    
    
}



@end





