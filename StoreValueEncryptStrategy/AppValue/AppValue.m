//
//  AppValue.m
//  AES
//
//  Created by YouXianMing on 15/9/24.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "AppValue.h"
#import "FastCoder.h"

static AppValue *_appValue  = nil;
static NSString *_flagValue = @"STR_SINGLETON";

@implementation AppValue

+ (AppValue *)shareInstance {
    
    static dispatch_once_t predicate; dispatch_once(&predicate, ^{
        
        // 确保只能从shareInstance方法中进行初始化
        _appValue = (AppValue *)_flagValue;
        _appValue = [[AppValue alloc] init];

    });
    
    // 防止子类使用
    NSString *classString = NSStringFromClass([self class]);
    if ([classString isEqualToString:@"AppValue"] == NO) {
        
        NSParameterAssert(nil);
    }
    
    return _appValue;
}

- (instancetype)init {
    
    NSString *string = (NSString *)_appValue;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:_flagValue]) {
        
        self = [super init];
        if (self) {
            
            // 防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if ([classString isEqualToString:@"AppValue"] == NO) {
                
                NSParameterAssert(nil);
            }
        }
        
        return self;
        
    } else {
        
        return nil;
    }
}

#pragma mark - 本地持久化
- (void)storeValue:(id)value withKey:(NSString *)key {
    
    NSParameterAssert(value);
    NSParameterAssert(key);
    
    NSData *data = [FastCoder dataWithRootObject:value];
    
    if (data == nil) {
        
        return;
    }
    
    if (self.appValueEncryptStrategy && self.password) {
        
        data = [self.appValueEncryptStrategy encryptWithData:data password:self.password];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
}

- (id)valueWithKey:(NSString *)key {
    
    NSParameterAssert(key);
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (self.appValueEncryptStrategy && self.password) {
        
        data = [self.appValueEncryptStrategy decryptWithData:data Password:self.password];
    }
    
    return [FastCoder objectWithData:data];
}

@end
