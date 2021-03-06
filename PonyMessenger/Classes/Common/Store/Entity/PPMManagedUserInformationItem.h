//
//  User_information.h
//  PonyMessenger
//
//  Created by 崔 明辉 on 15-3-27.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface PPMManagedUserInformationItem : NSManagedObject

@property (nonatomic, retain) NSNumber * user_id;
@property (nonatomic, retain) NSString * nickname;
@property (nonatomic, retain) NSString * avatar;

@end
