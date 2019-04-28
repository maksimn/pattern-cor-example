//
//  SwiftExampleRunner.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import Foundation

open class SwiftExampleRunner : NSObject {
    
    @objc public static func run() {
        print("SwiftExampleRunner");
        
        let networkUser = NetworkUser()
        
        networkUser.imitateNetworkRequest()
    }
}
