//
//  ViewController.m
//  多代理
//
//  Created by 黄俊煌 on 2017/12/12.
//  Copyright © 2017年 hongsui. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "DelegateManage.h"

@interface ViewController ()<AViewControllerDelegate>

@property (nonatomic, strong) DelegateManage *manage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    self.manage = [DelegateManage new];
    
    AViewController *avc = [AViewController new];
//    avc.aDelegate = self.manage;
//    avc.aDelegate = self;
    [avc addADelegate:self];
    [avc addADelegate:self.manage];
    [self.navigationController pushViewController:avc animated:YES];

//    AViewController *bvc = [AViewController new];
//    bvc.aDelegate = self;
//    [self.navigationController pushViewController:bvc animated:YES];
}

#pragma mark - AViewControllerDelegate

- (void)requiredMethod {
    
}

- (void)endRun {
    NSLog(@"ViewController 结束运行");
}


@end
