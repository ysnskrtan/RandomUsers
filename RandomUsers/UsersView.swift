//
//  ContentView.swift
//  RandomUsers
//
//  Created by Yasin Şükrü Tan on 9.12.2022.
//

import SwiftUI

struct UsersView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
