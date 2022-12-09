//
//  UserData.swift
//  RandomUsers
//
//  Created by Yasin Şükrü Tan on 9.12.2022.
//

import Foundation

class UserData {
    var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            print(error)
        }
    }
}
