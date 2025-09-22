//
//  Fonts.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 22.09.2025.
// Маю питання до викладача

import Foundation
import SwiftUI

struct Fonts {
    static func title(text: String) -> Text{
        return Text(text)
                .padding(.bottom, 100)
                .font(.largeTitle)
                .fontDesign(.monospaced)
                .fontWeight(.heavy)
                .foregroundStyle(.white) as! Text
    }
}
