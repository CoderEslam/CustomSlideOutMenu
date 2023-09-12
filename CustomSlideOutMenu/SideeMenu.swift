//
//  SideeMenu.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI

struct SideeMenu: View {
    // selected Tab
    @Binding var selectedTab :String
    @Binding var showMenu :Bool
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
                    
                    TabButton(image: "house", title: "Home", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    
                    TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    
                    TabButton(image: "bell.badge", title: "Notification", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    
                    TabButton(image: "gearshape.fill", title: "Setting", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    
                }.padding(.leading,-15)
                    .padding(.top,50)
                
                
                Spacer()
                
                 //Sign out Button
                VStack{
                    TabButton(image: "rectangle.trailinghalf.inset.filled.arrow.trailing", title: "Logout", selectedTab: $selectedTab, showMenu: $showMenu, animation: animation)
                    Text("App Version 1.2.34")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
            }.padding()
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        }
    }
}

struct SideeMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
