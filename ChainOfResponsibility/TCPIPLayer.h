//
//  TCPIPLayer.h
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


@interface TCPIPLayer : NSObject

@property (nonatomic, strong) TCPIPLayer *nextTCPIPLayer; /**< следующий уровень стека протоколов */

- (void)makeRequest:(NSMutableArray *) data;

@end


NS_ASSUME_NONNULL_END

