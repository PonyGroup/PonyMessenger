//
//  PPMChatDefine.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15/4/3.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kPPMChatRecordDidUpdateNotification @"PPMChatRecordDidUpdateNotification"

@interface PPMChatDefine : NSObject

@property (nonatomic, readonly) NSString *sessionURLString;

@property (nonatomic, readonly) NSDictionary *sessionResponseEagerTypes;

@property (nonatomic, readonly) NSString *recordURLString;

@property (nonatomic, readonly) NSDictionary *recordResponseEagerTypes;

@end