//
//  SignUpView.swift
//  LatinLearn
//
//  Created by Emory Cotter on 12/4/22.
//

import SwiftUI

struct SignUpView: View {
    //username and password variables tied to the text entry fields
    @State var username = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            //Background Color of the Screen
            ColorScheme.mainColor.ignoresSafeArea()
            
            
            VStack {
                //Title at the top of the screen
                Text("LatinLearn")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(ColorScheme.darkShade)
                    .multilineTextAlignment(.center)
                    .offset(y: -60)
                    .padding(.bottom, 20)
                
                Spacer()
                
                Image(systemName: "key.icloud")
                    .resizable()
                    .frame(width: 120, height: 100)
                    .padding(.bottom, 30)
                    .offset(y: -50)
                
                //Label for login bars
                VStack {
                    HStack {
                        Text("Sign Up")
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
                    
                    
                    //Sign up button
                    Button {
                        // Write Sign up function with firebase
                        guard !username.isEmpty, !password.isEmpty else {
                            return
                        }
                        
                        // Write Login function with firebase
                        viewModel.signUp(email: username, password: password)
                    } label: {
                        Text("Sign up")
                            .padding()
                            .foregroundColor(ColorScheme.darkAccent)
                            .font(.title3)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(ColorScheme.lightGreyColor)
                            )
                    }
                    .padding()
                }
                .frame(width: 300, height: 400)
            }
        }
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
