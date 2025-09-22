//
//  apiView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI

struct apiView: View {
    var body: some View {
        TabView{
            VStack{
                Button{
                } label:{ Text("Hello, World!")}
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Colors.MainGradient)
        }
    }
}

#Preview {
    apiView()
}
