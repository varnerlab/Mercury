//
//  ErrorMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/20/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class ErrorMessage:MercuryMessage {
    
    public var message_payload:String?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.ErrorKey
    }
    
    public init() { }
   
    public var line_number: String?
    public var column_numer: String?
    public var error_sentence: String?
    
    public var token: String?
    
    public var UUID: String?
    
}