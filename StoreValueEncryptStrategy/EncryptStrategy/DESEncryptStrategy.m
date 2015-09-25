//
//  DESEncryptStrategy.m
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "DESEncryptStrategy.h"
#import "NSData+CommonCrypto.h"

@implementation DESEncryptStrategy

- (NSData *)encryptWithData:(NSData *)data password:(NSString *)password {
    
    return [data DESEncryptedDataUsingKey:password error:nil];
}

- (NSData *)decryptWithData:(NSData *)data Password:(NSString *)password {
    
    return [data decryptedDESDataUsingKey:password error:nil];
}

@end
