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
    @State var showMenu  = false
    // Anmation Namespace
    @Namespace var animation
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            SideeMenu(selectedTab: $selectedTab, showMenu: $showMenu)
            
            ZStack{
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 25 : 0)
                    .shadow(color: .black.opacity(0.07), radius: 5 , x: -5 , y:0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical  , 60)
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 25 : 0)
                    .shadow(color: .black.opacity(0.07), radius: 5 , x: -5 , y:0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical  , 30)
                
                Home(selectedTab : $selectedTab)
                    .cornerRadius(showMenu ? 25 : 0)
                
            }
            // Scaling and moving View
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
                // Menu Button
                Button{
                    withAnimation{
                        showMenu.toggle()
                    }
                }label: {
                   
                    //Animation Drawer Button
                    VStack (spacing: 5){
                        Capsule()
                            .fill(showMenu ? .white : .primary)
                            .frame(width: 30 ,height: 3)
                        // Rotating
                            .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                            .offset(x: showMenu ? 2: 0,y: showMenu ? 9 : 0)
                        VStack(spacing: 5){
                            
                            Capsule()
                                .fill(showMenu ? .white : .primary)
                                .frame(width: 30 ,height: 3)
                            
                            //Moving up when clicked
                            Capsule()
                                .fill(showMenu ? .white : .primary)
                                .frame(width: 30 ,height: 3)
                            // Rotating
                                .offset(y: showMenu ? -8 : 0)
                        }
                        .rotationEffect(.degrees(showMenu ? 50 : 0))
                    }
                    
                }.padding()
                
                , alignment: .topLeading
            )
            
        }
    }

   
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension View{
    func getRect() -> CGRect{
        
        return UIScreen.main.bounds
    }
}
