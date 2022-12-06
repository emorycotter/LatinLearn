//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Emory Cotter on 9/11/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
      let incorrectGuesses: Int
     
      var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
      }
}
