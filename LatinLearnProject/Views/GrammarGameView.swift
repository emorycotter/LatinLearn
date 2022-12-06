//
//  GrammarGameView.swift
//  LatinLearn
//
//  Created by Emory Cotter on 12/4/22.
//

import SwiftUI

struct GrammarGameView: View {
    @StateObject var viewModel = GrammarGameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                GrammarQuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView()}))
    }
}


struct GrammarGameView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarGameView()
    }
}
