//
//  Tagger.swift
//  LOFOTunisia
//
//  Created by walid sassi on 5/9/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol ScreenTagger {
    func tag(name:ScreenTagName, category: ScreenTagCategory)
}
protocol EventTagger {
    func tagSplash()
    func tagConnexionScreen()
    func tagFBConnexionTouch()
    func tagConnexionSuccess()
    func tagConnexionTouch()
    func tagSubscriptionSuccess()
}
typealias Tagger = EventTagger & ScreenTagger
