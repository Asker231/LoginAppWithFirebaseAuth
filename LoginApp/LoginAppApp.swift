//
//  LoginAppApp.swift
//  LoginApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI
import FirebaseCore

@main
struct LoginAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
