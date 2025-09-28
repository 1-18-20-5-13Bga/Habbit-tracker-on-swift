//
//  MainView.swift
//  MyFirstApp
//
//  Created by Артем Пістренко on 02.08.2025.
//

import SwiftUI


struct MainView: View {
    @State private var views: [String: AnyView]  =
                                    ["Creator":AnyView(ProfileView()),
                                     "Habbit tracker": AnyView(CustomView()),
                                     "Motivational quotes": AnyView(apiView()),]
    @State var presentSheet = false
    @State var darkMode = false
    

    
    var body: some View {
        NavigationStack{
            VStack{
                Toggle("", isOn: $darkMode)
                    .padding()
                
                Text("My Habbit Tracker")
                    .padding(.bottom, 100)
                    .font(.largeTitle)
                    .fontDesign(.monospaced)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                
                
                Button("Cause for this app")
                {
                    presentSheet.toggle()
                }
                .sheet(isPresented: $presentSheet){
                    causeSheet()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Colors.MainGradient)
                        .preferredColorScheme(darkMode ? .dark: nil)
                }
                .font(.title2)
                .fontDesign(.serif)
                .fontWeight(.bold)
                
                
                .padding(.vertical,50)
                ForEach(Array(views.keys), id: \.self)
                {name in
                    NavigationLink(destination:views[name])
                    {
                        Text(name)
                            .padding()
                            .background(Color.yellow, in: RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10, x: 0, y: 10)
                            .font(.title2)
                            .fontDesign(.serif)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                }
                .padding(.bottom, 50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Colors.MainGradient)
            .preferredColorScheme(darkMode ? .dark: nil)
        }
        
    }
    }
    

#Preview {
    MainView()
}

struct causeSheet: View {
    var body: some View {
        let explanation: String = """
    I welcome you in my habbit tracker!!! I consider to make it because I was too tired that another apps of this type are either paid or bad. I hope I can do it better myself
    """
        Text(explanation)
    }
}
