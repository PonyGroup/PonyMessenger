//
//  PPMChatContactViewController.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-18.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PPMChatContactListPresenter;

@interface PPMChatContactViewController : UIViewController

@property (nonatomic, strong) PPMChatContactListPresenter *eventHandler;

- (void)reloadTableView;

@end
