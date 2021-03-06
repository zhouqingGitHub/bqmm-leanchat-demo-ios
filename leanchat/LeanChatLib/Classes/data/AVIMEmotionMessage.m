//
//  AVIMEmotionMessage.m
//  LeanChatLib
//
//  Created by lzw on 15/8/12.
//  Copyright (c) 2015年 LeanCloud（Bug汇报：QQ1356701892）.  All rights reserved.
//

#import "AVIMEmotionMessage.h"

static NSString *kAVIMEmotionPath = @"emotionPath";

@implementation AVIMEmotionMessage

+ (void)load {
    [self registerSubclass];
}

+ (AVIMMessageMediaType)classMediaType {
    return kAVIMMessageMediaTypeEmotion;
}

+ (instancetype)messageWithEmotionPath:(NSString *)emotionPath {
    return [super messageWithText:nil file:nil attributes:@{kAVIMEmotionPath: emotionPath}];
}

- (NSString *)emotionPath {
    return [self.attributes objectForKey:kAVIMEmotionPath];
}

@end
