//
//  PPMDefine.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-28.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPMAccountDefine.h"

@interface PPMDefine : NSObject

+ (PPMDefine *)sharedDefine;

@property (nonatomic, readonly) PPMAccountDefine *account;

@property (nonatomic, readonly) NSString *apiAbsolutePath;

@end