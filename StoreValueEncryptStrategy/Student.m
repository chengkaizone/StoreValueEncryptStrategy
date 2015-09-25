//
//  Student.m
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (instancetype)studentWithName:(NSString *)name {

    Student *student = [[Student alloc] init];
    student.name     = name;
    
    return student;
}

@end
