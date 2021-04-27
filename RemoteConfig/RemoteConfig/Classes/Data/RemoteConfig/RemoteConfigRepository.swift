//
//  RemoteConfigRepository.swift
//  RemoteConfig
//
//  Created by walid sassi on 5/30/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol RemoteConfigRepository {
    func getModel() -> RemoteConfigModel
}
