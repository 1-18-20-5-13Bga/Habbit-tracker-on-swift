//
//  CustomView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Colors.MainGradient)
    }
}

#Preview {
    CustomView()
}
