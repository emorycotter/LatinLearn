//
//  QuestionHub.swift
//  LatinLearn
//
//  Created by Emory Cotter on 12/4/22.
//

import Foundation

struct QuestionHub {
    
    //List of all possible grammar questions
    static var allGrammarQuestions = [
        GrammarQuestion(questionText: "How should adjectives agree with the nouns that they describe?", possibleAnswers: ["Case, Number, and Gender", "Case", "Number", "Number and Gender"], correctAnswerIndex: 0),
        GrammarQuestion(questionText: "Name a use of the Nominative case", possibleAnswers: ["The possessive", "The direct object", "The indirect object", "The subject"], correctAnswerIndex: 3),
        GrammarQuestion(questionText: "Name a use of the Genetive case", possibleAnswers: ["The direct object", "The indirect object", "The possessive", "The Subject"], correctAnswerIndex: 2),
        GrammarQuestion(questionText: "Name a use of the Dative case", possibleAnswers: ["The direct object", "The possessive", "The indirect object", "The subject"], correctAnswerIndex: 2),
        GrammarQuestion(questionText: "Name a use of the Ablative case", possibleAnswers: ["Manner", "Subject", "Possession", "Direct Object"], correctAnswerIndex: 0),
        GrammarQuestion(questionText: "Name a use of the Accusative case", possibleAnswers: ["The indirect object", "The direct object", "Possession", "Means/Instrument"], correctAnswerIndex: 1),
        GrammarQuestion(questionText: "What is the indicative mood?", possibleAnswers: ["Expresses Uncertainty", "Expresses Commands", "Expresses Wishes", "Expresses Facts"], correctAnswerIndex: 3),
        GrammarQuestion(questionText: "What is the imperative mood?", possibleAnswers: ["Expresses Commands", "Expresses Facts", "Expresses Actions", "Expresses Needs"], correctAnswerIndex: 0),
        GrammarQuestion(questionText: "What is the subjunctive mood?", possibleAnswers: ["Expresses Commands", "Expresses Reality", "Expresses Uncertainty", "Expresses Actions"], correctAnswerIndex: 2),
        GrammarQuestion(questionText: "What does the present tense address?", possibleAnswers: ["Current Actions", "Future Actions", "Completed Actions", "Past Actions"], correctAnswerIndex: 0)
    ]
    
    //List of all possible vocabulary questions
    static var allVocabQuestions = [
        VocabQuestion(questionText: "canis", possibleAnswers: ["Cat", "Canine", "Dogged", "Dog"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "coquus", possibleAnswers: ["Cook", "Cooked", "Cooking", "Having cooked"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "sum, esse, fui, futurus", possibleAnswers: ["To have been", "To be about to be", "To be", "Having been"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "filia", possibleAnswers: ["daughter", "son", "mother", "father"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "filius", possibleAnswers: ["mother", "daughter", "son", "father"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "hortus", possibleAnswers: ["Fort", "Garden", "Horrid", "Cursed"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "in + abl", possibleAnswers: ["Into", "Onto", "In", "From"],
                      correctAnswerIndex: 2),
        VocabQuestion(questionText: "in + acc", possibleAnswers: ["From", "In", "On", "Into"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "laborat", possibleAnswers: ["S/he works", "S/he worked", "S/he had worked","S/he will work"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "mater", possibleAnswers: ["Father", "Motherly", "Fatherly", "Mother"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "pater", possibleAnswers: ["Mother", "Father", "Motherly", "Fatherly"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "sedet", possibleAnswers: ["S/he sat", "S/he had sat", "S/he sits", "S/he was sitting"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "servus", possibleAnswers: ["Enslaved", "Slave", "Slavery", "Serve"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "tablinum", possibleAnswers: ["Study", "Bedroom", "Table", "Room"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "triclinium", possibleAnswers: ["Study", "Dining room", "Three rooms", "Table"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "via", possibleAnswers: ["Vent", "City", "Urban", "Street"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "amicus", possibleAnswers: ["Amicable", "Amiable", "Friend", "Friendly"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "ancilla", possibleAnswers: ["Girl", "Slave girl", "Ancillary", "Worker"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "cena", possibleAnswers: ["Dinner", "Dining room", "Cook", "Food"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "cibus", possibleAnswers: ["Dining room", "Cook", "Dinner", "Food"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "dominus", possibleAnswers: ["Master", "Mastered", "Mastering", "Having mastered"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "dormit", possibleAnswers: ["S/he slept", "S/he sleeps", "S/he had slept", "S/he will sleep"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "gustat", possibleAnswers: ["S/he tasted", "S/he had tasted", "S/he tastes", "S/he will taste"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "intrat", possibleAnswers: ["S/he enters", "S/he had entered", "S/he entered", "S/he will enter"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "laetus", possibleAnswers: ["Praise", "Happiness", "Praised", "Happy"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "laudat", possibleAnswers: ["S/he Praises", "Happy", "To praise", "Happiness"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "mensa", possibleAnswers: ["Mend", "Mental", "Table", "Block"], correctAnswerIndex: 2),
        VocabQuestion(questionText: "mercator", possibleAnswers: ["Merchandise", "Merchant", "S/he sells", "S/he sold"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "quoquo", possibleAnswers: ["Too much", "Then", "However", "Also"], correctAnswerIndex: 3),
        VocabQuestion(questionText: "salutat", possibleAnswers: ["S/he greets", "S/he greeted", "S/he will greet", "S/he had greeted"], correctAnswerIndex: 0),
        VocabQuestion(questionText: "toga", possibleAnswers: ["Dress", "Toga", "Togas", "Dresses"], correctAnswerIndex: 1),
        VocabQuestion(questionText: "tunica", possibleAnswers: ["Sleeves", "Pants", "Socks", "Shirt"], correctAnswerIndex: 3)
        
    ]
    
    static func getVocabGameQuestions(numQuestions: Int) -> [VocabQuestion] {
        var gameQuestions: [VocabQuestion] = []
        
        QuestionHub.allVocabQuestions.shuffle()
        for i in 0...(numQuestions - 1) {
            gameQuestions.append(QuestionHub.allVocabQuestions[i])
        }
        
        return gameQuestions
    }
    
    static func getGrammarGameQuestions(numQuestions: Int) -> [GrammarQuestion] {
        var gameQuestions: [GrammarQuestion] = []
        
        QuestionHub.allGrammarQuestions.shuffle()
        for i in 0...(numQuestions - 1) {
            gameQuestions.append(QuestionHub.allGrammarQuestions[i])
        }
        
        return gameQuestions
    }
}
