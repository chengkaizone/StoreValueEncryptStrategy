//
//  AES256EncryptStrategy.m
//  AES
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "AES256EncryptStrategy.h"
#import "NSData+CommonCrypto.h"

@implementation AES256EncryptStrategy

- (NSData *)encryptWithData:(NSData *)data password:(NSString *)password {

    return [data AES256EncryptedDataUsingKey:password error:nil];
}

- (NSData *)decryptWithData:(NSData *)data Password:(NSString *)password {

    return [data decryptedAES256DataUsingKey:password error:nil];
}

@end
