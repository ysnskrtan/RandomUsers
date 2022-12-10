//
//  ContentView.swift
//  RandomUsers
//
//  Created by Yasin Şükrü Tan on 9.12.2022.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
