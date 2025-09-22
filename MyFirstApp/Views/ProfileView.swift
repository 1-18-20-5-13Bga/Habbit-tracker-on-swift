//
//  ProfileView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Text("Artem")
            Text("Pistrenko")
            Text("ІТШІз-23-1")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Colors.MainGradient)
        
    }
    
}

#Preview {
    ProfileView()
}
