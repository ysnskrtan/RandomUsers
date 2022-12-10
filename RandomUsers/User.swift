//
//  User.swift
//  RandomUsers
//
//  Created by Yasin Şükrü Tan on 10.12.2022.
//

import Foundation

struct Response: Decodable {
    let users: [User]
    
    enum CodingKeys: String, CodingKey {
        case users = "results"
    }
}

struct User: Decodable, Identifiable {
    let id: String
    let name: Name
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(Name.self, forKey: .name)
        
        let loginInfo = try values.nestedContainer(keyedBy: LoginInfoCodingKeys.self,
                                                   forKey: .login)
        id = try loginInfo.decode(String.self, forKey: .uuid)
    }
    
    var fullName: String {
        name.title + ". " + name.first + " " + name.last
    }
    
    enum CodingKeys: String, CodingKey {
        case login
        case name
    }
    
    enum LoginInfoCodingKeys: String, CodingKey {
        case uuid
    }
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}