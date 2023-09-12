//
//  ContentView.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // selected Tab
    @State var selectedTab :String = "Home"
    // Anmation Namespace
    @Namespace var animation
    var body: some View {
        ZStack{
            Color(.blue)
                .ignoresSafeArea()
            
            // Side Menu
            VStack(alignment: .leading , spacing: 15){
                
                Image("heart")
                    .resizable()
                    .aspectRatio(contentMode: .fill) // .fill , .fit
                    .frame(width: 70,height: 70)
                    .cornerRadius(10)
                // padding top for Top Close Button
                    .padding(.top,50)
                
                VStack(alignment: .leading, spacing: 6){
                    
                    Text("Eslam Ghazy")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Button{
                        
                    }label: {
                        Text("View Profile")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .opacity(0.7)
                    }
                    
                }
                
                // tab Button
                
                VStack(alignment: .leading, spacing: 12){
                    
                    TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "bell.badge", title: "Notification", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "gearshape.fill", title: "Setting", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
                    
                }.padding(.leading,-15)
                    .padding(.top,50)
                
            }.padding()
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        }
    }

   
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
