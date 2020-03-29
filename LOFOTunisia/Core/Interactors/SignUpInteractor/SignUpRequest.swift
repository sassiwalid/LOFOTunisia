//
//  SignUpRequest.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
struct SignUpRequest {
    public private(set) var email: String
    public private(set) var password: String
    public private(set) var age:Int
    public private(set) var city:String
    public private(set) var name:String
    public private(set) var subName:String
    init(email:String = "", password: String = "", age:Int = 1, city:String = "", name:String = "", subName:String = "" ) {
        self.email = email
        self.password = password
        self.age = age
        self.city = city
        self.name = name
        self.subName = subName
    }
    //MARK: - Based on builder Pattern
    
    public func setEmail(_ email: String) -> SignUpRequest{
        var request = self
        request.email = email
        return request
    }
    public func setPassword(_ password: String) -> SignUpRequest {
        var request = self
        request.password = password
        return request
    }
    public func setAge(_ age: Int) -> SignUpRequest {
        var request = self
        request.age = age
        return request
    }
    public func setCity(_ city: String) -> SignUpRequest {
        var request = self
        request.city = city
        return request
    }
    public func setName(_ name: String) -> SignUpRequest {
        var request = self
        request.name = name
        return request
    }
    public func setSubName(_ subName: String) -> SignUpRequest {
        var request = self
        request.subName = subName
        return request
    }
    
}
