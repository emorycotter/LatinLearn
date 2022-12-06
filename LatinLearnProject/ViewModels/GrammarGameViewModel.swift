//
//  GrammarGameViewModel.swift
//  LatinLearn
//
//  Created by Emory Cotter on 12/4/22.
//

import Foundation
import SwiftUI
class GrammarGameViewModel: ObservableObject {
    @Published private var game = GrammarGame()
   
    var currentQuestion: GrammarQuestion {
       game.currentQuestion
    }
    
    
    var questionProgressText: String {
      "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
      
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
      
      func makeGuess(atIndex index: Int) {
          game.makeGuessForCurrentQuestion(atIndex: index)
      }
      
      func displayNextScreen() {
          game.updateGameStatus()
      }
      
      func color(forOptionIndex optionIndex: Int) -> Color {
               if let guessedIndex = game.guesses[currentQuestion] {
                   if guessedIndex != optionIndex {
                       return GameColor.mainColor
                   } else if guessedIndex == currentQuestion.correctAnswerIndex {
                       return GameColor.correctGuess
                   } else {
                       return GameColor.incorrectGuess
                   }
               } else {
                   return GameColor.mainColor
               }
           }
      
      var gameIsOver: Bool {
          game.isOver
      }
      
      var correctGuesses: Int {
          game.guessCount.correct
      }
      
      var incorrectGuesses: Int {
          game.guessCount.incorrect
      }
}
