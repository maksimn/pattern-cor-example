//
//  TCPIPLayer.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class TCPIPLayer {
    
    var nextTCPIPLayer: TCPIPLayer?
    
    func makeRequest(data: [String]) {
        nextTCPIPLayer?.makeRequest(data: data);
    }
}
