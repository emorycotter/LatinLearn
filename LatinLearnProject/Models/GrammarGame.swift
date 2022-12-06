//
//  TranslationGame.swift
//  LatinLearn
//
//  Created by Emory Cotter on 11/26/22.
//

import Foundation

struct GrammarGame {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [GrammarQuestion: Int]()
    private(set) var isOver = false
    private let questions = QuestionHub.getGrammarGameQuestions(numQuestions: 10)
    
    
     var guessCount: (correct: Int, incorrect: Int) {
         var count: (correct: Int, incorrect: Int) = (0, 0)
         for (question, guessedIndex) in guesses {
             if question.correctAnswerIndex == guessedIndex {
                 count.correct += 1
             } else {
                 count.incorrect += 1
             }
         }
         return count
     }
     
     
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    
    var currentQuestion: GrammarQuestion {
        questions[currentQuestionIndex]
    }
     
    
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex >= questions.count - 1 {
            isOver = true
        } else {
            currentQuestionIndex += 1
        }
    }
     
     
    
}
