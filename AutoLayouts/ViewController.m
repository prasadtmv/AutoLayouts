//
//  ViewController.m
//  AutoLayouts
//
//  Created by ecare on 01/01/1939 Saka.
//  Copyright © 1939 Saka ecare. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self usingFrames];
    
    [self usingAutoSizingMasks];
}

-(void)usingFrames
{
    UIView *viewOne = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    
    viewOne.backgroundColor  = [UIColor redColor];
    [self.view addSubview:viewOne];
    
    UIView *viewTwo = [[UIView alloc] initWithFrame:CGRectMake(25, 25, 50, 50)];
    
    viewTwo.backgroundColor  = [UIColor greenColor];
    [viewOne addSubview:viewTwo];
    
    
    viewTwo.autoresizingMask = (UIViewAutoresizingFlexibleWidth |
                               UIViewAutoresizingFlexibleHeight |
                               UIViewAutoresizingFlexibleTopMargin |
                               UIViewAutoresizingFlexibleLeftMargin |
                               UIViewAutoresizingFlexibleRightMargin |
                               UIViewAutoresizingFlexibleBottomMargin );
    
    viewOne.frame = CGRectMake(20, 20, 300, 100);

  //  viewTwo.frame = CGRectMake(25, 25, 250, 50);
 
}

-(void)usingAutoSizingMasks
{
    
}
-(void)viewDidDisappear:(BOOL)animated
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
