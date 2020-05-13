//
//  DelegateManage.m
//  多代理
//
//  Created by 黄俊煌 on 2017/12/12.
//  Copyright © 2017年 hongsui. All rights reserved.
//

#import "DelegateManage.h"
#import "AViewController.h"

@interface DelegateManage()<AViewControllerDelegate>


@end

@implementation DelegateManage

#pragma mark - AViewControllerDelegate

- (void)requiredMethod {}

- (void)endRun {
    NSLog(@"DelegateManage 结束运行");
}

@end
