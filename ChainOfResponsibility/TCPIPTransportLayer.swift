//
//  TCPIPTransportLayer.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class TCPIPTransportLayer : TCPIPLayer {
    
    override func makeRequest(data: [String]) {
        print("TCPIPTransportLayer makeRequest")
        
        var mData = data;
        
        mData.append("some transport layer headers")
        
        super.makeRequest(data: mData);
    }
}
