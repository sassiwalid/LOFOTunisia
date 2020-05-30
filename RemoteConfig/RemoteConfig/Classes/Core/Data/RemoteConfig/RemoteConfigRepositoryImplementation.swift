//
//  RemoteConfigRepositoryImplementation.swift
//  RemoteConfig
//
//  Created by walid sassi on 5/30/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

public class RemoteConfigRepositoryImplementation: RemoteConfigRepository {
    
    private let configuration: Configuration

    init(configuration: Configuration) {
        self.configuration = configuration
    }
    
    // MARK: - RemoteConfigRepository

    public func getModel() -> RemoteConfigModel {
        return RemoteConfigModel(enableSignUp: configuration["enable_signup"].bool)
    }

}

private extension ConfigurationValue {
    var doubleValue: Double? { return numberValue?.doubleValue }
    var floatValue: Float? { return numberValue?.floatValue }
    var intValue: Int? { return numberValue?.intValue }
    var double: Double { return doubleValue ?? 0 }
    var float: Float { return floatValue ?? 0 }
    var int: Int { return intValue ?? 0 }
    var string: String { return stringValue  ?? "" }
    var bool: Bool { return boolValue ?? false }
}
