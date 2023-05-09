//
//  ContentView.swift
//  LoginApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @AppStorage("uid") var userID = " "
    var body: some View {
        VStack {
            if userID == " "{
                SignInView()
            }else{
                    Text("Welcome Home")
                    Button {
                        let firebaseAuth = Auth.auth()
                        do {
                          try firebaseAuth.signOut()
                            withAnimation {
                                userID = " "
                            }
                        } catch let signOutError as NSError {
                          print( signOutError)
                        }
                    } label: {
                        Text("Выход")
                    }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
