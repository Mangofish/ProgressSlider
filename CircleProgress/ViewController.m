//
//  ViewController.m
//  CircleProgress
//
//  Created by 悦悦 on 2018/4/15.
//  Copyright © 2018年 悦悦. All rights reserved.
//

#import "ViewController.h"
#import "CircleProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//   demo
    CGFloat xCrack = ([UIScreen mainScreen].bounds.size.width-150*2)/3.0;
    CGFloat yCrack = ([UIScreen mainScreen].bounds.size.height-150*2)/3.0;
    CGFloat itemWidth = 150;
    
   CircleProgress *circle = [[CircleProgress alloc] initWithFrame:CGRectMake(xCrack*2+itemWidth, yCrack, itemWidth, itemWidth) startColor:[UIColor orangeColor] endColor:[UIColor blueColor] startAngle:0 reduceAngle:0 strokeWidth:10];//渐变颜色，不需要渐变传相同即可
    circle.backgroundColor = [UIColor colorWithRed:180/255.0 green:230/255.0 blue:222/255.0 alpha:1];
    circle.radius = 50;
    circle.roundStyle = YES;
    circle.showProgressText = NO;
    circle.showPathBack = YES;
    circle.pathBackColor = [UIColor lightGrayColor];
    circle.colorGradient = NO;
//    根据需要
    circle.progress = 0.6;
    [self.view addSubview:circle];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
