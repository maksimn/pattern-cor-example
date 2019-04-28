//
//  NetworkUser.swift
//  ChainOfResponsibility
//
//  Created by Maksim Ivanov on 28/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

class NetworkUser {
    
    func imitateNetworkRequest() {
        print("NetworkUser imitateNetworkRequest");
        
        let networkAccessLayer = TCPIPNetworkAccessLayer()
        
        let internetworkLayer = TCPIPInternetworkLayer()
        internetworkLayer.nextTCPIPLayer = networkAccessLayer
        
        let transportLayer = TCPIPTransportLayer()
        transportLayer.nextTCPIPLayer = internetworkLayer;
        
        let applicationLayer = TCPIPApplicationLayer()
        applicationLayer.nextTCPIPLayer = transportLayer
        
        let applicationData = "some application data";
        
        applicationLayer.makeRequest(data: [applicationData]);
    }
}
