//
//  TCPIPTransportLayer.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "TCPIPTransportLayer.h"

@implementation TCPIPTransportLayer

- (void)makeRequest:(NSMutableArray *) data
{
    NSLog(@"TCPIPTransportLayer makeRequest");
    [data addObject:@"some transport layer headers"];
    [super makeRequest:data];
}

@end
