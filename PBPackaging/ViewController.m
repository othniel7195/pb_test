//
//  ViewController.m
//  PBPackaging
//
//  Created by zhao.feng on 2019/1/9.
//  Copyright © 2019年 zhao.feng. All rights reserved.
//

#import "ViewController.h"
#import "pb/protoModels/Preson.pbobjc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Preson *p = [[Preson alloc] init];
    p.name = @"zhaofeng";
    p.email = @"11@qq.com";
    
    Preson_PhoneNumber *pnumber1 = [[Preson_PhoneNumber alloc] init];
    pnumber1.phoneType = 1;
    pnumber1.number = @"139183762848";
    
    p.phoneArray = [[NSMutableArray alloc] init];
    [p.phoneArray addObject:pnumber1];
    
    NSData *data = [p data];
    NSLog(@"NSData= %@", data);
    
    Preson *person2 = [Preson parseFromData:data error:NULL];
    NSLog(@"name:%@ uid:%d email:%@",person2.name,person2.uid,person2.email);
    
}


@end
