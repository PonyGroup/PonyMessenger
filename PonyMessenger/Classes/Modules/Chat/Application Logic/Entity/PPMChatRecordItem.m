//
//  PPMChatRecordItem.m
//  PonyMessenger
//
//  Created by 崔 明辉 on 15/4/3.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import "PPMChatRecordItem.h"
#import "PPMManagedChatRecordItem.h"
#import <PonyChatUI/PCUMessage.h>

@implementation PPMChatRecordItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self && [dictionary isKindOfClass:[NSDictionary class]]) {
        self.recordID = dictionary[@"record_id"];
        self.sessionID = dictionary[@"session_id"];
        self.fromUserID = dictionary[@"from_user_id"];
        self.recordTime = dictionary[@"record_time"];
        self.recordType = dictionary[@"record_type"];
        self.recordTitle = dictionary[@"record_title"];
        self.recordParams = dictionary[@"record_params"];
        self.recordHash = dictionary[@"record_hash"];
    }
    return self;
}

- (instancetype)initWithManagedItem:(PPMManagedChatRecordItem *)managedItem {
    self = [super init];
    if (self && [managedItem isKindOfClass:[PPMManagedChatRecordItem class]]) {
        self.recordID = managedItem.record_id;
        self.sessionID = managedItem.session_id;
        self.fromUserID = managedItem.from_user_id;
        self.recordTime = managedItem.record_time;
        self.recordType = managedItem.record_type;
        self.recordTitle = managedItem.record_title;
        self.recordParams = managedItem.record_params;
        self.recordHash = managedItem.record_hash;
    }
    return self;
}

- (instancetype)initWithMessage:(PCUMessage *)message {
    self = [super init];
    if (self && [message isKindOfClass:[PCUMessage class]]) {
        self.recordType = [NSNumber numberWithInteger:message.type];
        self.recordTitle = message.title;
        self.recordHash = message.identifier;
        if (message.params != nil) {
            NSData *JSONData = [NSJSONSerialization dataWithJSONObject:message.params options:kNilOptions error:NULL];
            self.recordParams = [[NSString alloc] initWithData:JSONData encoding:NSUTF8StringEncoding];
        }
    }
    return self;
}

@end
