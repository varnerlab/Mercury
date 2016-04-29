//
//  CompletedMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/29/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class CompletedMessage:MercuryMessage {
    
    public var message_payload:String?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.CompletedKey
    }
    
    public init() { }
    
    public var UUID: String?
    
}