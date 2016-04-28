//
//  Mercury.swift
//  Mercury
//
//  Created by Jeffrey Varner on 3/28/16.
//  Copyright © 2016 Varnerlab. All rights reserved.
//

import Foundation

public typealias MessageKey = String

public protocol MercuryMessage {
    func getMercuryMessageKey() -> MessageKey
}

public protocol MercurySubscriber {
    func receive(message: MercuryMessage)
}

public class Mercury {
    
    // Class/instance variables -
    public static let sharedInstance = Mercury()
    private var subscriber_dictionary = Dictionary<MessageKey, Array<MercurySubscriber>>()
    
    // Define the message keys -
    public static let EchoKey:MessageKey = "ECHO_MESSAGE_KEY"

    public static let ErrorKey: MessageKey = "ERROR_MESSAGE_KEY"
    
    public static let StartKey: MessageKey = "START_MESSAGE_KEY"
    
    public static let StopKey: MessageKey = "STOP_MESSAGE_KEY"
    
    // private constructor -
    private init() {
        
        // do anthing here?
        // ...
    }

    
    
    public func subscribe(subscriber: MercurySubscriber, messageKey: MessageKey) -> Void {
        
        if (subscriber_dictionary[messageKey] == nil){
            subscriber_dictionary[messageKey] = []
        }
        
        subscriber_dictionary[messageKey]!.append(subscriber)
    }
    
    public func publish(message: MercuryMessage) -> Void {
        
        if let subscriber_array = subscriber_dictionary[message.getMercuryMessageKey()] {
            for subscriber in subscriber_array {
                subscriber.receive(message)
            }
        }
    }
}