//
//  PPMChatRecentViewController.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-17.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PPMChatRecentListPresenter;

@interface PPMChatRecentViewController : UIViewController

@property (nonatomic, strong) PPMChatRecentListPresenter *eventHandler;

- (void)reloadTableView;

@end
