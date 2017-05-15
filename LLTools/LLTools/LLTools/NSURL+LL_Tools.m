//
//  NSURL+LL_Tools.m
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "NSURL+LL_Tools.h"

@implementation NSURL (LL_Tools)
- (NSMutableDictionary *)parseUrl{
    NSMutableDictionary *queryStringDictionary = [[NSMutableDictionary alloc] init];
    NSArray *urlComponents = [[self query] componentsSeparatedByString:@"&"];
    for (NSString *keyValuePair in urlComponents)
    {
        NSRange range = [keyValuePair rangeOfString:@"="];
        NSString *k = (range.length ? [keyValuePair substringToIndex:range.location]:keyValuePair);
        NSString *v = range.length > 0 ? [keyValuePair substringFromIndex:range.location + 1] : @"";
        k = [self urlDecode:k];
        v = [self urlDecode:v];
        [queryStringDictionary setObject:v forKey:k];
    }
    return queryStringDictionary;
}

- (NSString *)urlDecode:(NSString *)input{
    return [[input stringByReplacingOccurrencesOfString:@"+" withString:@" "]stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
