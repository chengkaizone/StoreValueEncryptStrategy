//
//  Student.h
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;

+ (instancetype)studentWithName:(NSString *)name;

@end
