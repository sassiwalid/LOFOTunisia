//
//  Coordinator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
class Coordinator: NSObject {
    var children: [Coordinator] = []
}

// This extension add handy methods to manipulate children array

extension Coordinator {

    func addChild(_ coordinator: Coordinator) {
        children.append(coordinator)
    }

    func removeChild(_ coordinator: Coordinator) {
        if let index = children.firstIndex(of: coordinator) {
            children.remove(at: index)
        }
    }

    func removeAllChildren() {
        children.removeAll(keepingCapacity: false)
    }
}
