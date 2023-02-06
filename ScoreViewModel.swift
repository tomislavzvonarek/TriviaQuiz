//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Tomislav Zvonarek on 05.02.2023..
//

import Foundation

struct ScoreViewModel {
    //properties
    let correctGuess: Int
    let incorrectGuess: Int
    
    var percentage: Int {
        (correctGuess * 100 / (correctGuess + incorrectGuess))
    }
}
