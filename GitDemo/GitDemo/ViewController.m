//
//  ViewController.m
//  GitDemo
//
//  Created by 江奔 on 2018/12/24.
//  Copyright © 2018 zhenhong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"-- 这是3分支");
    NSLog(@"-- 这是4分支");
    
    
    NSLog(@"测试回滚");
}

- (void)test {
    
    NSLog(@"-- Test");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_async(queue, ^{
        
        
        
        
        NSLog(@"-- 1");
        [self performSelector:@selector(test) withObject:nil afterDelay:3.0];
        NSLog(@"-- 2");
        
    });
}

@end
