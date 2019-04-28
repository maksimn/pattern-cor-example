//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 24/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "ViewController.h"
#import "NetworkUser.h"
#import "ChainOfResponsibility-Swift.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self createUI];
    
    [SwiftExampleRunner run];
    // [self runObjCExample];
}

- (void)createUI
{
    self.view.backgroundColor = UIColor.whiteColor;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 80)];
    label.numberOfLines = 0;
    label.text = @"Network protocol imitation.\nPlease look to console to see program output.";
    label.center = self.view.center;
    [self.view addSubview:label];
}

- (void)runObjCExample
{
    NetworkUser *networkUser = [NetworkUser new];
    [networkUser imitateNetworkRequest];
}

@end
