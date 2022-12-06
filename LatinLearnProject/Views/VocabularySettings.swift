//
//  VocabularySettings.swift
//  LatinLearn
//
//  Created by Emory Cotter on 10/7/22.
//

import SwiftUI

struct VocabularySettings: View {
    @State var numberOfQuestions = 1
    
    var body: some View {
        ZStack {
            ColorScheme.mainColor.ignoresSafeArea()
            
            Text("Settings")
                .font(.title)
                .padding()
            HStack {
                Text("Number of Questions")
                    .padding()
                
                VStack {
                    Button {
                        numberOfQuestions += 1
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 5, height: 5)
                    }
                    .padding([.leading, .trailing])
                    
                    Button {
                        if(numberOfQuestions > 1) {
                            numberOfQuestions -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 10, height: 10)
                    }
                    .padding([.leading, .trailing])
                }
                
                Text("\(numberOfQuestions)")
            }
            
            //Link to start quiz
            NavigationLink {
                //Navigate to a vocab quiz
                VocabWelcomeView()
            } label: {
                Text("Start quiz!!!")
            }
        }
        
    }
}

struct VocabularySettings_Previews: PreviewProvider {
    static var previews: some View {
        VocabularySettings()
    }
}
