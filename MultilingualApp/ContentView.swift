//
//  ContentView.swift
//  MultilingualApp
//
//  Created by Simec Sys Ltd. on 6/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                TextField(LocalizedStringKey("Username"), text: Binding.constant(""))
                Section {
                    TextField(LocalizedStringKey("FirstName"), text: Binding.constant(""))
                    TextField(LocalizedStringKey("LastName"), text: Binding.constant(""))
                }
                Button(LocalizedStringKey("Select Language")) {
                    UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                }
                Button(LocalizedStringKey("SignUp")) {
                    print(Bundle.main.preferredLocalizations.first ?? "Nothing")
                }
            }
            .navigationBarTitle(LocalizedStringKey("Registration"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
