//
//  NSNull+LL_Tools.m
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "NSNull+LL_Tools.h"

@implementation NSNull (LL_Tools)

#pragma mark - 防止是NSNull 调用string的方法奔溃
- (BOOL)boolValue{
    return NO;
}

- (int)intValue{
    return 0;
}

- (NSInteger)integerValue{
    return 0;
}

- (float)floatValue{
    return 0.0;
}

- (double)doubleValue{
    return 0.0;
}

- (long long)longLongValue{
    return 0;
}

- (NSUInteger)length{
    return 0;
}

- (BOOL)isEqualToString:(NSString *)aString{
    return NO;
}

- (NSString *)substringFromIndex:(NSUInteger)from{
    return @"";
}

- (NSString *)substringToIndex:(NSUInteger)to{
    return @"";
}

- (NSString *)substringWithRange:(NSRange)range{
    return @"";
}

#pragma mark - 字符串是否为nil
- (BOOL)isStringNotNil{
    return NO;
}
- (BOOL)isStringEmpty{
    return YES;
}

@end
