//
//  TCPIPApplicationLayer.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "TCPIPApplicationLayer.h"


@implementation TCPIPApplicationLayer

- (void)makeRequest:(NSMutableArray *) data
{
    NSLog(@"TCPIPApplicationLayer makeRequest");
    
    [data addObject:@"some application layer headers"];
    
    [super makeRequest:data];
}

@end

