//
//  WelcomeView.swift
//  Code History
//
//  Created by Emory Cotter on 9/9/22.
//

import SwiftUI

struct VocabWelcomeView: View {
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
                        destination: VocabGameView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                    })
                    
                }
                .foregroundColor(.white)
                
            }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        VocabWelcomeView()
    }
}
