//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 31.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group{
            if UIDevice.current.userInterfaceIdiom == .pad {
                MainView()// Має змінювати шрифт, проте є проблеми з Fonts
            }
            else if UIDevice.current.userInterfaceIdiom == .phone {
                MainView()
            }
        }
    }
}

#Preview {
    ContentView()
}
