//
//  NSString+LL_Tools.h
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LL_Tools)


/**
 判读字符串是否不为空

 @return yes  不为空
 */
- (BOOL)isStringNotNil;

/**
 判读字符串是否为空
 @return yes 为空
 */
- (BOOL)isStringEmpty;

/**
 md5

 @return 不解释
 */
- (NSString *)ll_md5;

@end
