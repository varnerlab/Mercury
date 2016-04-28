//
//  ErrorMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/20/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class ErrorMessage:MercuryMessage {
    
    // Class/instance variables -
    public var message_payload:String?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.ErrorKey
    }
    
    public init() { }
   
    //Add error message, token, line #, column #
    
    public func getToken() -> String {
        
        return ("Error found: line: \(#line), column: \(#column)")
    }
        
    
}