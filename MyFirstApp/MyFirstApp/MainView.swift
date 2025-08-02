//
//  MainView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            Text("My Habbit Tracker")
                .padding(.bottom, 150)
            Button("Cause for this app"){
                print("Hi")
            }
                .padding(.vertical,50)
            Button("API"){
                print("Hi")
            }
            Button("CustomPage"){
                print("Hi")
            }
            Button("Profile"){
                print("Hi")
            }
            .padding(.bottom, 200)
        }
        
    }
}

#Preview {
    MainView()
}
