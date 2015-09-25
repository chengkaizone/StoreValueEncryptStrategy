//
//  ViewController.m
//  StoreValueEncryptStrategy
//
//  Created by YouXianMing on 15/9/25.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "AppValue.h"
#import "NSObject+AppValue.h"

#import "AES256EncryptStrategy.h"
#import "DESEncryptStrategy.h"
#import "CASTEncryptStrategy.h"

#import "Model.h"
#import "Student.h"

#define MODEL  @"model"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 设定加密策略与加密秘钥(不设定的话存储策略就为不加密,此为全局设定,你可以替换成DESEncryptStrategy或者是CASTEncryptStrategy)
    [AppValue shareInstance].appValueEncryptStrategy = [[AES256EncryptStrategy alloc] init];
    [AppValue shareInstance].password                = @"jxs340_1";
    
    // 创建Model
    Model *model   = [[Model alloc] init];
    model.name     = @"YouXianMing";
    model.age      = @(18);
    model.students = @[[Student studentWithName:@"A"],
                       [Student studentWithName:@"B"],
                       [Student studentWithName:@"C"],
                       [Student studentWithName:@"D"]];
    
    // 将Model存储到本地
    [model storeValueWithKey:MODEL];
    
    // 0.25s 后从本地取出加密的Model
    [self performSelector:@selector(event) withObject:nil afterDelay:0.25f];
}

- (void)event {

    // 获取存储在本地的数据
    Model *newModel = [AppValue accessStoreValueWithKey:MODEL];
    
    NSLog(@"%@", newModel.name);
    NSLog(@"%@", newModel.age);
    
    for (int count = 0; count < newModel.students.count; count++) {
        
        Student *student = newModel.students[count];
        NSLog(@"%@", student.name);
    }
}

@end
