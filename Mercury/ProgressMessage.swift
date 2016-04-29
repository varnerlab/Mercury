//
//  ProgressMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/29/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class ProgressMessage:MercuryMessage {
    
    public var message_payload:String?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.ProgressKey
    }
    
    public init() { }
    
    public var UUID: String?
    
}