//
//  AppValue.h
//  AES
//
//  Created by YouXianMing on 15/9/24.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppValueEncryptProtocol.h"

@interface AppValue : NSObject

/**
 *  加密策略
 */
@property (nonatomic, strong) id <AppValueEncryptProtocol> appValueEncryptStrategy;

/**
 *  加密密码
 */
@property (nonatomic, strong) NSString *password;

/**
 *  单例
 *
 *  @return 实例对象
 */
+ (AppValue *)shareInstance;

/**
 *  存储对象
 *
 *  @param value 对象
 *  @param key   键值
 */
- (void)storeValue:(id)value withKey:(NSString *)key;

/**
 *  取出对象
 *
 *  @param key 对象
 *
 *  @return 键值
 */
- (id)valueWithKey:(NSString *)key;

@end
