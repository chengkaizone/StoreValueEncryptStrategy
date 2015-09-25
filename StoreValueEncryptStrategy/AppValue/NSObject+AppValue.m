//
//  NSObject+AppValue.m
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "NSObject+AppValue.h"
#import "AppValue.h"

@implementation NSObject (AppValue)

- (void)storeValueWithKey:(NSString *)key {

    if (self) {
    
        [[AppValue shareInstance] storeValue:self withKey:key];
    }
}

+ (id)accessStoreValueWithKey:(NSString *)key {

    return [[AppValue shareInstance] valueWithKey:key];
}

@end
