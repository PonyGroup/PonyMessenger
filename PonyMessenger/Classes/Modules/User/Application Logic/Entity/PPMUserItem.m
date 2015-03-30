//
//  PPMUserItem.m
//  PonyMessenger
//
//  Created by 崔 明辉 on 15/3/30.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import "PPMUserItem.h"
#import "PPMManagedUserInformationItem.h"

@implementation PPMUserItem

- (instancetype)initWithManagedItem:(PPMManagedUserInformationItem *)managedItem {
    self = [super init];
    if (self && [managedItem isKindOfClass:[PPMManagedUserInformationItem class]]) {
        self.userID = managedItem.user_id;
        self.nickname = managedItem.nickname;
        self.avatarURLString = managedItem.avatar;
    }
    return self;
}

@end