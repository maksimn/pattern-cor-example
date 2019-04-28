//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 24/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self createUI];
}

- (void)createUI
{
    self.view.backgroundColor = UIColor.whiteColor;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 80)];
    label.numberOfLines = 0;
    label.text = @"Network protocols simulation.\nPlease look to console to see program output.";
    label.center = self.view.center;
    [self.view addSubview:label];
}

@end
