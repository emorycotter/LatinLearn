//
//  LoginView.swift
//  LatinLearn
//
//  Created by Emory Cotter on 9/27/22.
//

import Foundation 
import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        NavigationView {
            if viewModel.signedIn {
                UserDashboard()
            } else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
    
    struct SignInView: View {
        
        //username and password variables tied to the text entry fields
        @State var username = ""
        @State var password = ""
        @State var displayName = ""
        
        
        @EnvironmentObject var viewModel: AppViewModel
        
        var body: some View {
            ZStack {
                //Background Color of the Screen
                ColorScheme.mainColor.ignoresSafeArea()
                
                
                VStack {
                    //Title at the top of the screen
                    /*
                    Text("LatinLearn")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(ColorScheme.darkShade)
                        .multilineTextAlignment(.center)
                        .offset(y: -60)
                    
                    Spacer()
                     */
                    
                    Image(systemName: "key.icloud")
                        .resizable()
                        .frame(width: 120, height: 100)
                        .padding(.bottom, 50)
                        .offset(y: -50)
                    
                    //Label for login bars
                    VStack {
                        HStack {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(ColorScheme.darkAccent)
                            
                            Image(systemName: "lock")
                                .resizable()
                                .frame(width: 15, height: 20)
                                .foregroundColor(ColorScheme.darkAccent)
                        }
                        .foregroundColor(ColorScheme.darkShade)
                        
                        
                        //Place for user to enter username, with default text username
                        TextField("Email", text: $username)
                            .padding()
                            .background(ColorScheme.lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.bottom, 30)
                            .foregroundColor(ColorScheme.darkAccent)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        //Place for user to enter password, with default text password
                        SecureField("Password", text: $password)
                            .padding()
                            .background(ColorScheme.lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.bottom, 20)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        //Login button
                        Button {
                            guard !username.isEmpty, !password.isEmpty else {
                                return
                            }
                            
                            // Write Login function with firebase
                            viewModel.signIn(email: username, password: password)
                        } label: {
                            Text("Login    ")
                                .padding()
                                .foregroundColor(ColorScheme.darkAccent)
                                .font(.title3)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(ColorScheme.lightGreyColor)
                                )
                                .frame(width: 200, height: 70)
                        }
                        
                        NavigationLink {
                            SignUpView()
                        } label: {
                            Text("Sign Up")
                                .padding()
                                .foregroundColor(ColorScheme.darkAccent)
                                .font(.title3)
                                .background(
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(ColorScheme.lightGreyColor)
                                )
                                .frame(width: 200, height: 70)
                        }
                    }
                    .frame(width: 300, height: 400)
                }
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
