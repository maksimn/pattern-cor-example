//
//  TCPIPInternetworkLayer.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class TCPIPInternetworkLayer : TCPIPLayer {
    
    override func makeRequest(data: [String]) {
        print("TCPIPInternetworkLayer makeRequest")
        
        var mData = data;
        
        mData.append("some internetwork layer headers")
        
        super.makeRequest(data: mData);
    }
}
