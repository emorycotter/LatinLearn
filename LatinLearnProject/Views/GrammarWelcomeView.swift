//
//  GrammarSettings.swift
//  LatinLearn
//
//  Created by Emory Cotter on 10/7/22.
//

import SwiftUI

struct GrammarWelcomeView: View {
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Text("Select the correct answer to the following questions.")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                Spacer()
                Spacer()
                NavigationLink(
                    destination: GrammarGameView(),
                    label: {
                        BottomTextView(str: "Okay let's go!")
                })
                
            }
            .foregroundColor(.white)
            
        }
    }
}

struct GrammarSettings_Previews: PreviewProvider {
    static var previews: some View {
        GrammarWelcomeView()
    }
}
