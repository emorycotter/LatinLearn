//
//  GrammarQuestionView.swift
//  LatinLearn
//
//  Created by Emory Cotter on 12/5/22.
//

import SwiftUI

struct GrammarQuestionView: View {
    @EnvironmentObject var viewModel: GrammarGameViewModel
    let question: GrammarQuestion
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<(question.possibleAnswers.count - 2)) { index in
                    Button {
                        viewModel.makeGuess(atIndex: index)
                        print("Tapped on option with the text: \(question.possibleAnswers[index])")
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[index])
                            .background(viewModel.color(forOptionIndex: index))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            
            HStack {
                ForEach(2..<question.possibleAnswers.count) { index in
                    Button {
                        viewModel.makeGuess(atIndex: index)
                        print("Tapped on option with the text: \(question.possibleAnswers[index])")
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[index])
                            .background(viewModel.color(forOptionIndex: index))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct GrammarQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarQuestionView(question: GrammarGame().currentQuestion)
            .environmentObject(GrammarGameViewModel())
    }
}
