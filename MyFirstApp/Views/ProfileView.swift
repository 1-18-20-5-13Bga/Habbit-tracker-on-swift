//
//  ProfileView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI

struct ProfileView: View {
                                    
    
    var body: some View {
        ScrollView{
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 350, alignment: .bottomLeading)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth:4)
                }
                .shadow(radius:7)
            VStack{
                Text("Artem Pistrenko")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            VStack{
                Text("Group ІТШІз-23-1")
                    .padding()
                    .font(.title)
                    .fontWeight(.bold)
            }
            VStack{
                Text("Hello, I'm Artem. I hope you're enjoying the app! I made it as a project for my studies as a AI Engineer. I'm trying to learn the basics of programming for mobile devices in this project and to repeat the princips of programming, in this case, with Swift and SwiftUI especially. Enjoy my project!!!")
                    .padding()
                    .font(.title2)
                    
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Colors.MainGradient)
        
    }
    
}

#Preview {
    ProfileView()
}
