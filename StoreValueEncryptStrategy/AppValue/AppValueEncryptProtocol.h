//
//  AppValueEncryptProtocol.h
//  AES
//
//  Created by YouXianMing on 15/9/24.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AppValueEncryptProtocol <NSObject>

/**
 *  加密
 *
 *  @param data     被加密数据
 *  @param password 秘钥
 *
 *  @return 加密后数据
 */
- (NSData *)encryptWithData:(NSData *)data password:(NSString *)password;

/**
 *  解密
 *
 *  @param data     被解密数据
 *  @param password 秘钥
 *
 *  @return 解密后数据
 */
- (NSData *)decryptWithData:(NSData *)data Password:(NSString *)password;

@end
