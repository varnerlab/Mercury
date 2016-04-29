//
//  StartMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/20/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class StartMessage:MercuryMessage {
    
    public var message_payload:[String]?
    
    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.StartKey
    }
    
    public init() { }
    
    public var let UUID = NSUUID().UUIDString
    
}