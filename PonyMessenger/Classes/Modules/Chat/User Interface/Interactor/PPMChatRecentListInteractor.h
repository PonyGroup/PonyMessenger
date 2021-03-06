//
//  PPMChatRecentListInteractor.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-18.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPMChatRecentListInteractor : NSObject

/**
 *  NSArray -> PPMChatRecentCellInteractor
 */
@property (nonatomic, copy) NSArray *cellInteractors;

- (void)findRecentSessions;

@end
