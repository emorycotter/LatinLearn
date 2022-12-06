//
//  Colors.swift
//  LatinLearn
//
//  Created by Emory Cotter on 9/19/22.
//

import Foundation
import SwiftUI

struct ColorScheme {
    static var lightShade: Color = Color(red: 247/255, green: 246/255, blue: 246/255)
    static var lightAccent: Color = Color(red: 170/255, green: 132/255, blue: 146/255)
    static var mainColor: Color = Color(red: 168/255, green: 210/255, blue: 223/255)
    static var darkAccent: Color = Color(red: 133/255, green: 108/255, blue: 147/255)
    static var darkShade: Color = Color(red: 71/255, green: 61/255, blue: 83/255)
    static var questionBoxColor: Color = Color.blue
    static var correctAnswerColor: Color = Color.green
    static var incorrectAnswerColor: Color = Color.red
    static var lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
}

/*
 Light Shade F7F6F6 -> Use this color as the background for your dark-on-light designs, or the text color of an inverted design.
 Light Accent AA8492 -> Accent colors can be used to bring attention to design elements by contrasting with the rest of the palette.
 Main Brand Color A8D2DF -> This color should be eye-catching but not harsh. It can be liberally applied to your layout as its main identity.
 Dark Accent 856C93 -> Another accent color to consider. Not all colors have to be used - sometimes a simple color scheme works best.
 Dark Shades 473D53 -> Use as the text color for dark-on-light designs, or as the background for inverted designs.
*/
