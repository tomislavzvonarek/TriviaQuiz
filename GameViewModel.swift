//
//  GameViewModel.swift
//  Code History
//
//  Created by Tomislav Zvonarek on 05.02.2023..
//

import SwiftUI

class GameViewModel: ObservableObject {
    //published properties
    @Published private var game = Game()
    //internal properties
    var currentQuestion: Question {
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
    var gameIsOver: Bool {
        game.isOver
    }
    var correctGuess: Int {
        game.guessCount.correct
    }
    var incorrectGuess: Int {
        game.guessCount.incorrect
    }
    
    //methods
    func makeGuess(atindex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    func displayNextScreen() {
        game.updateGameStatus()
    }
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                    return GameColor.correctGuess
                } else {
                    return GameColor.incorrectGuess
                }
            } else {
                return GameColor.main
            }
        }
    }

