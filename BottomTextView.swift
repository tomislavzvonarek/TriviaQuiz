//
//  BottomTextView.swift
//  Code History
//
//  Created by Tomislav Zvonarek on 05.02.2023..
//

import SwiftUI

struct BottomTextView: View {
    //properties
    let str: String
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "test")
    }
}
