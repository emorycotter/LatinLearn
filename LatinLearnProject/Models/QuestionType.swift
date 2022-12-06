//
//  Question.swift
//  Code History
//
//  Created by Emory Cotter on 9/3/22.
//

import Foundation

struct VocabQuestion: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
}

struct GrammarQuestion: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
}

