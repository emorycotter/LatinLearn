//
//  Game.swift
//  Code History
//
//  Created by Emory Cotter on 9/8/22.
//

import Foundation

struct VocabGame {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [VocabQuestion: Int]()
    private(set) var isOver = false
    private let questions = QuestionHub.getVocabGameQuestions(numQuestions: 10)
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
    
    var currentQuestion: VocabQuestion {
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
