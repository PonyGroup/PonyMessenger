//
//  PPMAccountDefine.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-28.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kPPMAccountSigninCompletionNotification @"PPMAccountSigninCompletionNotification"

#define kPPMAccountChangedNotification @"PPMAccountChangedNotification"

@interface PPMAccountDefine : NSObject

@property (nonatomic, readonly) NSString *signupURLString;

@property (nonatomic, readonly) NSDictionary *signupResponseEagerTypes;

@property (nonatomic, readonly) NSString *signinURLString;

@property (nonatomic, readonly) NSDictionary *signinResponseEagerTypes;

@end
