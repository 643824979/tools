//
//  NSURL+LL_Tools.h
//  LLTools
//
//  Created by longlz on 2017/5/15.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (LL_Tools)

/**
 获取url “？参数 ”
 http://www/baidu.com/page?a=1&b=2
 @return @{@"a":@"1",@"b":@"2"}
 */
-(NSMutableDictionary *)parseUrl;

@end
