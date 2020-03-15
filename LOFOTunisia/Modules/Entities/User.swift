//
//  User.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/15/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import CoreData


class User: NSManagedObject,Codable {
    enum CodingKeys: String, CodingKey {
        case name
        case subName
        case city
        case email
        case password
        case age
    }
    required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "User", in: managedObjectContext) else {
            fatalError("Failed to decode User")
        }

        self.init(entity: entity, insertInto: managedObjectContext)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.subName = try container.decodeIfPresent(String.self, forKey: .subName)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.password = try container.decodeIfPresent(String.self, forKey: .password)
        self.age = try container.decodeIfPresent(Int16.self, forKey: .age)!
    }

    // MARK: - Encodable
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        
    }
}
public extension CodingUserInfoKey {
    // Helper property to retrieve the context
    static let managedObjectContext = CodingUserInfoKey(rawValue: "managedObjectContext")
}
