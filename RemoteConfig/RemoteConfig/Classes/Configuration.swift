//
//  Configuration.swift
//  RemoteConfig
//
//  Created by walid sassi on 5/30/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

public protocol ConfigurationValue {
    var stringValue: String? { get }
    var numberValue: NSNumber? { get }
    var boolValue: Bool? { get }
}

public protocol Configuration: AnyObject {
    func setDefaults(_ dictionary: [String: NSObject]?)
    subscript(key: String) -> ConfigurationValue { get }
}
