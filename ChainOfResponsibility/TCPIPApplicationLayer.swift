//
//  TCPIPApplicationLayer.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class TCPIPApplicationLayer : TCPIPLayer {
    
    override func makeRequest(data: [String]) {
        print("TCPIPApplicationLayer makeRequest")
        
        var mData = data;
        
        mData.append("some application layer headers")
        
        super.makeRequest(data: mData);
    }
}
