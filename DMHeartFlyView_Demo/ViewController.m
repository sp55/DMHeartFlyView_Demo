//
//  ViewController.m
//  DMHeartFlyView_Demo
//
//  Created by admin on 2016/10/10.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "DMHeartFlyView.h"

#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width


@interface ViewController ()
@property (nonatomic, assign)CGFloat heartSize;
@property (nonatomic)NSTimer *splashTimer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.splashTimer = [NSTimer scheduledTimerWithTimeInterval:0.1  target:self selector:@selector(rote) userInfo:nil repeats:YES];
    
    
  

}
-(void)rote{

    _heartSize = 35;
    
    DMHeartFlyView* heart = [[DMHeartFlyView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    [self.view addSubview:heart];
    CGPoint fountainSource = CGPointMake(SCREENWIDTH-_heartSize, self.view.bounds.size.height - _heartSize/2.0 - 10);
    heart.center = fountainSource;
    [heart animateInView:self.view];
}

-(void)viewWillDisappear:(BOOL)animated
{
    if ([self.splashTimer isValid]) {
        self.splashTimer = nil;
    }
}
@end
