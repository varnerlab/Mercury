//
//  StopMessage.swift
//  Mercury
//
//  Created by Rohaine Hsu on 4/20/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public class StopMessage:MercuryMessage {

    public func getMercuryMessageKey() -> MessageKey {
        return Mercury.StopKey
    }
    
    public init() { }
    
    //UUID
    
    let uuid = NSUUID().UUIDString
    print(uuid)
}