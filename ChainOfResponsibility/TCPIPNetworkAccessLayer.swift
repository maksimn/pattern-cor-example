//
//  TCPIPNetworkAccessLayer.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class TCPIPNetworkAccessLayer : TCPIPLayer {
    
    override func makeRequest(data: [String]) {
        print("TCPIPNetworkAccessLayer makeRequest")
        
        var mData = data;
        
        mData.append("some network access layer headers")
        
        print("Sending whole TCP/IP network stack data to other host in the network:")
        
        mData.forEach { str in
            print(str)
        }
    }
}
