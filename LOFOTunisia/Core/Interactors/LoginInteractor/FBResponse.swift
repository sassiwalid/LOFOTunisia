//
//  FBResponse.swift
//  LOFOTunisia
//
//  Created by walid sassi on 4/5/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

public enum LOFOError:Error {
    case serverError(codeStatus:Int)
    case technicalError(codeStatus:Int)
}
public enum FBResponse {
    case success(data:String)
    case LOFOErrror
}
