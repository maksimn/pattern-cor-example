//
//  TCPIPNetworkAccessLayer.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "TCPIPLayer.h"
#import "TCPIPNetworkAccessLayer.h"


@implementation TCPIPNetworkAccessLayer

- (void)makeRequest:(NSMutableArray *) data
{
    NSLog(@"TCPIPNetworkAccessLayer makeRequest");
    
    [data addObject:@"some network access layer headers"];
    
    NSLog(@"Sending whole TCP/IP network stack data to other host in the network:");
    
    for (NSString *str in data) {
        NSLog(@"%@", str);
    }
}

@end
