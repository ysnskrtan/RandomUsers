//
//  UserData.swift
//  RandomUsers
//
//  Created by Yasin Şükrü Tan on 9.12.2022.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    @Published var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            print(users)
            self.users = users
        } catch {
            print(error)
        }
    }
}
