//
//  TCPIPLayer.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "TCPIPLayer.h"


@implementation TCPIPLayer

- (void)makeRequest:(NSMutableArray *) data
{
    [self.nextTCPIPLayer makeRequest:data];
}

@end
