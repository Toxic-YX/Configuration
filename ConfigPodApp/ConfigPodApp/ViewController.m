//
//  ViewController.m
//  ConfigPodApp
//
//  Created by YuXiang on 2017/2/28.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[self readValueFromConfigurationFile]);
}

- (NSString *) readValueFromConfigurationFile {
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSString *path = [bundle pathForResource:@"Configuration" ofType:@"plist"];
    
    NSDictionary *config = [NSDictionary dictionaryWithContentsOfFile:path];
    
    return config[@"serviceUrl"];
    
}

@end
