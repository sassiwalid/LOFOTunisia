//
//  FirebaseTagger.swift
//  LOFOTunisia
//
//  Created by walid sassi on 5/9/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import FirebaseAnalytics

class FirebaseTagger: Tagger {
    typealias Parameters = [String: Any]
    static let shared = FirebaseTagger()

    private init() {}

    func tag(name:ScreenTagName, category: ScreenTagCategory) {
        Analytics.setScreenName(name.rawValue, screenClass: category.rawValue)
    }
    func tagConnexionTouch() {
        tag(category: .login, action: .login, label: "connexion")
    }
    func tagSplash() {}
    func tagConnexionScreen() {}
    func tagFBConnexionTouch() {
        tag(category: .login, action: .facebook, label: "connexionFB")
    }
    func tagConnexionSuccess() {}
    func tagSubscriptionSuccess() {}
    func tagSignupTouch() {
        tag(category: .login, action: .subscribe, label: "ouvririnscription")
    }
    private func tag(category:FirebaseCategory, action: FirebaseAction, label: String? = nil) {
        tag(category: category, action: action.rawValue, label: label)
    }
    private func tag(category: FirebaseCategory, action: String, label: String?) {
        var params: Parameters = ["eventCategory": category.rawValue, "eventAction": action]
        if let label = label, !label.isEmpty {
            params["eventLabel"] = label
        }
        Analytics.logEvent("uaevent", parameters: params)
    }
}
