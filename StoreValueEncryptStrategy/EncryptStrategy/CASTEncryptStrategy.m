//
//  CASTEncryptStrategy.m
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "CASTEncryptStrategy.h"
#import "NSData+CommonCrypto.h"

@implementation CASTEncryptStrategy 

- (NSData *)encryptWithData:(NSData *)data password:(NSString *)password {
    
    return [data CASTEncryptedDataUsingKey:password error:nil];
}

- (NSData *)decryptWithData:(NSData *)data Password:(NSString *)password {
    
    return [data decryptedCASTDataUsingKey:password error:nil];
}

@end
