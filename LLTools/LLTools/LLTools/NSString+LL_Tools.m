//
//  NSString+LL_Tools.m
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "NSString+LL_Tools.h"
#import<CommonCrypto/CommonDigest.h>

@implementation NSString (LL_Tools)

- (BOOL)isStringNotNil{
    return (self.length > 0 && ![self isEqualToString:@""]);
}

- (BOOL)isStringEmpty{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimedString = [self stringByTrimmingCharactersInSet:set];
    return ![trimedString length];
}


- (NSString *)ll_md5{
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}
@end
