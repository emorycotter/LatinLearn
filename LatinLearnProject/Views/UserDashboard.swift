//
//  UserDashboard.swift
//  LatinLearn
//
//  Created by Emory Cotter on 10/7/22.
//

import SwiftUI

struct UserDashboard: View {
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            ColorScheme.mainColor.ignoresSafeArea()
            
            VStack {
                HStack {
                    VStack {
                        Text("Hello \n")
                    
                    }
                    .padding()
                    .foregroundColor(ColorScheme.darkAccent)
                    .font(.system(size: 40))
                    .frame(maxWidth: 300, alignment: .leading)
                    
                    //Hopefully one day replace with customizable photo
                    Image(systemName:  "person.circle")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .offset(x: -35)
                }
                
                Rectangle()
                    .frame(width: 350, height: 3)
                
                Spacer()
                
                ZStack {
                    NavigationLink {
                        GrammarWelcomeView()
                    } label: {
                        Text("Translation")
                            .padding()
                            .foregroundColor(ColorScheme.darkAccent)
                            .font(.system(size: 30))
                            .frame(width: 320, height: 150)
                    }
                    
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(ColorScheme.lightGreyColor)
                            .frame(width: 320, height: 150)
                    )
                }
                .padding()
                
                
                ZStack {
                    NavigationLink {
                        VocabWelcomeView()
                    } label: {
                        Text("Vocabulary")
                            .padding()
                            .foregroundColor(ColorScheme.darkAccent)
                            .font(.system(size: 30))
                            .frame(width: 320, height: 150)
                    }
                    
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(ColorScheme.lightGreyColor)
                            .frame(width: 320, height: 150)
                    )
                }
                .padding()
                
                ZStack {
                    NavigationLink {
                        LoginView()
                    } label: {
                        Button {
                            viewModel.signOut()
                        } label: {
                            Text("Sign Out")
                                .padding()
                                .foregroundColor(ColorScheme.darkAccent)
                                .font(.system(size: 30))
                                .frame(width: 320, height: 150)
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(ColorScheme.lightGreyColor)
                                .frame(width: 320, height: 150)
                        )
                    }
                }
                Spacer()
            
            }
        }
    }
}

struct UserDashboard_Previews: PreviewProvider {
    static var previews: some View {
        UserDashboard()
    }
}
