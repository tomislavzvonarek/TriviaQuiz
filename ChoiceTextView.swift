//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Tomislav Zvonarek on 03.02.2023..
//

import SwiftUI

struct ChoiceTextView: View {
    //properties
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
            .cornerRadius(4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice text")
    }
}
