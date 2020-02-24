//
//  OCViewController.m
//  swift_project
//
//  Created by zxfei on 2020/2/24.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "OCViewController.h"
#import "swift_project-Swift.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"OC 页面";
    self.view.backgroundColor = UIColor.whiteColor;
    
    Person *person = [[Person alloc] initWithName:@"swift" age:5];
    NSLog(@"%@",person.name);
}

- (void)test1{
    NSLog(@"%s",__func__);
}

- (void)test2 {
    NSLog(@"%s",__func__);
}


@end
