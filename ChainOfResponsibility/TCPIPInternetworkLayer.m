//
//  TCPIPInternetworkLayer.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "TCPIPInternetworkLayer.h"


@implementation TCPIPInternetworkLayer

- (void)makeRequest:(NSMutableArray *) data
{
    NSLog(@"TCPIPInternetworkLayer makeRequest");
    [data addObject:@"some internetwork layer headers"];
    [super makeRequest:data];
}

@end
