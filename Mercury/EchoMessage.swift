//
//  EchoMessage.swift
//  Mercury
//
//  Created by Jeffrey Varner on 4/5/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class EchoMessage:MercuryMessage {
    
    // Class/instance variables -
    public var message_payload:String?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.EchoKey
    }
    
    public init() { }
    
}