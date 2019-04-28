//
//  NetworkUser.m
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import "NetworkUser.h"
#import "TCPIPNetworkAccessLayer.h"
#import "TCPIPInternetworkLayer.h"
#import "TCPIPTransportLayer.h"
#import "TCPIPApplicationLayer.h"


@implementation NetworkUser

- (void)imitateNetworkRequest
{
    NSLog(@"NetworkUser imitateNetworkRequest");
    
    TCPIPNetworkAccessLayer *networkAccessLayer = [TCPIPNetworkAccessLayer new];
    
    TCPIPInternetworkLayer *internetworkLayer = [TCPIPInternetworkLayer new];
    internetworkLayer.nextTCPIPLayer = networkAccessLayer;
    
    TCPIPTransportLayer *transportLayer = [TCPIPTransportLayer new];
    transportLayer.nextTCPIPLayer = internetworkLayer;
    
    TCPIPApplicationLayer *applicationLayer = [TCPIPApplicationLayer new];
    applicationLayer.nextTCPIPLayer = transportLayer;
    
    NSString *applicationData = @"some application data";
    [applicationLayer makeRequest:[NSMutableArray arrayWithArray:@[applicationData]]];
}

@end

