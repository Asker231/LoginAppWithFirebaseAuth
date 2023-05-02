//
//  SignUpView.swift
//  LoginApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct SignUpView: View {
    @State var name      : String = " "
    @State var email     : String = " "
    @State var phone     : String = " "
    @State var password  : String = " "
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Create a new account")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .bold()
                    Text("Please fill in the form to continue !")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                Spacer()
                VStack(spacing: 30){
                    Spacer()
                    VStack(spacing: 20){
                        ZStack{
                            TextField("Yor login...", text: $name)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.gray)
                                //.cornerRadius(20)
                        }.frame(width: 300 )
                            //.underline()
                        ZStack{
                            TextField("Yor password..", text: $email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.gray)
                               // .cornerRadius(20)
                        }.frame(width: 300 )
                        
                        ZStack{
                            TextField("Yor password..", text: $phone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.gray)
                                //.cornerRadius(20)
                        }.frame(width: 300 )
                        
                        ZStack{
                            TextField("Yor password..", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.gray)
                                //.cornerRadius(20)
                        }.frame(width: 300 )
                    }
                    .padding(.vertical,20)
                    .padding(.horizontal,10)
                    .background(Color("signin"))
                    .cornerRadius(20)
                    
                    
                    Spacer()
                    VStack(spacing:30){
                        Button {
                            print(0)
                        } label: {
                            ZStack{
                                Text("Sign Up")
                                    .font(.system(size: 12))
                                    .bold()
                            }
                            .frame(maxWidth: 290,maxHeight:50)
                            .background(.blue)
                            .cornerRadius(15)
                        }
                    }
                    
                    Spacer()
                }
                Spacer()
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(.black)
                .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
