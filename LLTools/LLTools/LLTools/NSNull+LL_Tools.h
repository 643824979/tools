//
//  NSNull+LL_Tools.h
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNull (LL_Tools)

#pragma mark - 防止是NSNull 调用string的方法奔溃
- (BOOL)boolValue;

- (int)intValue;

- (NSInteger)integerValue;

- (float)floatValue;

- (double)doubleValue;

- (long long)longLongValue;

- (NSUInteger)length;

- (BOOL)isEqualToString:(NSString *)aString;

- (NSString *)substringFromIndex:(NSUInteger)from;

- (NSString *)substringToIndex:(NSUInteger)to;

- (NSString *)substringWithRange:(NSRange)range;

#pragma mark - 字符串是否为nil

- (BOOL)isStringNotNil;

- (BOOL)isStringEmpty;

@end
