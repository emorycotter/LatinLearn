//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Emory Cotter on 9/3/22.
//

import Foundation
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
                  .font(.body)
                  .bold()
                  .multilineTextAlignment(.center)
                  .fixedSize()
                  .padding(50)
                  .border(GameColor.darkAccent, width: 5)
                  .position(x: 125, y: 500)
                  
                  
                  
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Hello")
    }
}
