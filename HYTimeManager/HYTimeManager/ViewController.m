//
//  ViewController.m
//  HYTimeManager
//
//  Created by hy on 2018/9/13.
//  Copyright © 2018年 hy. All rights reserved.
//

#import "ViewController.h"
#import "HYTimeManager/HYTimeManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",[HYTimeManager getNowTimeWithDateFormat:@"YYYY-MM-dd HH:mm:ss"]);
    NSLog(@"%@",[HYTimeManager getDayOfNow]);
    NSLog(@"%@",[HYTimeManager getWeakDayOfNow]);
    
    NSLog(@"%@",[HYTimeManager timeToTimeStamp:[HYTimeManager getNowTimeWithDateFormat:@"YYYY-MM-dd HH:mm:ss"] DateFormat:@"YYYY-MM-dd HH:mm:ss" withMs:YES]);
    
    NSLog(@"%@",[HYTimeManager getTimeStampOfNowWithMs:YES]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
