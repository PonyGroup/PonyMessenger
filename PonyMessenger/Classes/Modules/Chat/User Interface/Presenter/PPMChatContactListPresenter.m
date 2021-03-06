//
//  PPMChaatContactListPresenter.m
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-19.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import "PPMChatContactListPresenter.h"
#import "PPMChatContactListInteractor.h"
#import "PPMChatContactViewController.h"
#import "PPMChatContactCellInteractor.h"
#import "PPMApplication.h"
#import "PPMUserManager.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation PPMChatContactListPresenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _listInteractor = [[PPMChatContactListInteractor alloc] init];
        [self configureReactiveCocoa];
    }
    return self;
}

- (void)updateView {
    [self.listInteractor findContacts];
}

- (void)addContact {
    [[ChatCore wireframe] presentAddContactViewControllerToNavigationController:self.userInterface.navigationController];
}

- (void)enterUserInformationViewControllerWithCellInteractor:(PPMChatContactCellInteractor *)cellInteractor {
    [[UserCore wireframe] presentUserInformationViewControllerToNavigationController:self.userInterface.navigationController withUserID:cellInteractor.userID];
}

- (void)configureReactiveCocoa {
    @weakify(self);
    [RACObserve(self, listInteractor.contacts) subscribeNext:^(id x) {
        @strongify(self);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.userInterface reloadTableView];
        });
    }];
}

@end
