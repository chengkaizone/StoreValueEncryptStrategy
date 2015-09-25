//
//  NSObject+AppValue.h
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AppValue)

- (void)storeValueWithKey:(NSString *)key;

+ (id)accessStoreValueWithKey:(NSString *)key;

@end
