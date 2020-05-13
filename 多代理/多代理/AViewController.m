//
//  AViewController.m
//  多代理
//
//  Created by 黄俊煌 on 2017/12/12.
//  Copyright © 2017年 hongsui. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

//- (void)dealloc {
//    self.aDelegates = nil;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
//    if ([self.aDelegate respondsToSelector:@selector(endRun)]) {
//        [self.aDelegate endRun];
//    }
    
    for (id delegate in self.aDelegates) {
        if ([delegate respondsToSelector:@selector(endRun)]) {
            [delegate endRun];
        }
    }
}

- (void)addADelegate:(id)delegate {
    [self.aDelegates addObject:delegate];
}

- (void)removeADelegate:(id)delegate {
    [self.aDelegates removeObject:delegate];
}

- (NSMutableArray *)aDelegates {
    if (_aDelegates) return _aDelegates;
    _aDelegates = [NSMutableArray array];
    return _aDelegates;
}

@end
