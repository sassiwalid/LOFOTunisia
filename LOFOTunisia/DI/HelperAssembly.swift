//
//  HelperAssembly.swift
//  LOFOTunisia
//
//  Created by walid sassi on 5/9/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import Swinject

class HelperAssembly: Assembly {
    func assemble(container: Container) {
        container.register(Tagger.self) { _ in
            FirebaseTagger.shared
        }
    }
}
