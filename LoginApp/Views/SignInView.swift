//
//  SignUPView.swift
//  LoginApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct SignInView: View {
    @State var login     : String = " "
    @State var passwordd : String = " "
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Welcome Back!")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .bold()
                    Text("Please sign in to your account!")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                Spacer()
                VStack(spacing: 30){
                    Spacer()
                    ZStack{
                        TextField("Yor login...", text: $login)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.gray)
                            .cornerRadius(20)
                    }.frame(width: 300 )
                    ZStack{
                        TextField("Yor password..", text: $passwordd)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.gray)
                            .cornerRadius(20)
                    }.frame(width: 300 )
                  
                    HStack(){
                        Spacer()
                        Text("Forget password ? ")
                        .font(.system(size: 12))
                    }.frame(maxWidth: 290)
                    VStack(spacing:30){
                        Button {
                            print(0)
                        } label: {
                            ZStack{
                                Text("Sign In")
                                    .font(.system(size: 12))
                                    .bold()
                            }
                            .frame(maxWidth: 290,maxHeight:50)
                            .background(.blue)
                            .cornerRadius(15)
                        }
                        
                        Button {
                            print(0)
                        } label: {
                            ZStack{
                                HStack{
                                    Image(systemName: "pencil.circle.fill")
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                        .foregroundColor(.black)
                                    
                                    Text("Sign In With Google")
                                        .foregroundColor(.black)
                                        .font(.system(size: 12))
                                }
                            }
                            .frame(maxWidth: 290,maxHeight:50)
                            .background(.white)
                            .cornerRadius(15)
                        }
                        
                        HStack{
                            Text("Dont have an Account?")
                            NavigationLink {
                                SignUpView()
                            } label: {
                                Text("Sign Up")
                                    .font(.system(size: 12))
                                    .foregroundColor(.blue)
                              
                            }

                        }

                    }
                    .padding(10)
                    Spacer()
                }
                Spacer()
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.black)
            .navigationTitle("LoginPage")
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
