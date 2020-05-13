//
//  AViewController.h
//  多代理
//
//  Created by 黄俊煌 on 2017/12/12.
//  Copyright © 2017年 hongsui. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AViewControllerDelegate

@required

- (void)requiredMethod;

@optional

- (void)startRun;

- (void)endRun;

@end

@interface AViewController : UIViewController

@property (nonatomic, weak) id aDelegate;

/** 多代理就是用存储多个代理，不知是否会内存泄漏 有待考察。可以用NSPointerArray*/
@property (nonatomic, strong) NSMutableArray *aDelegates;

- (void)addADelegate:(id)delegate;

- (void)removeADelegate:(id)delegate;

@end
