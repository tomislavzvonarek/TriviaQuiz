//
//  ScoreView.swift
//  Code History
//
//  Created by Tomislav Zvonarek on 05.02.2023..
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuess) ✅")
                    Text("\(viewModel.incorrectGuess) ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(),
                               label: {
                                BottomTextView(str: "Re-take Quiz")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuess: 8, incorrectGuess: 2))
    }
}
