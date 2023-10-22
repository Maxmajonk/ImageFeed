//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Mikhail Vostrikov on 22.10.2023.
//

import Foundation

class OAuth2TokenStorage {
    static let shared = OAuth2TokenStorage()
    
    var token: String? {
        get {
            return UserDefaults.standard.string(forKey: "BearerToken")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "BearerToken")
        }
    }
}
