//
//  Home.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab  : String
    
    //Hiding Tab Bar
    init(selectedTab : Binding<String>){
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        // Tab View With Tabs...
        TabView(selection: $selectedTab){
            
            // Views...
            HomePage()
                .tag("Home")
            
            History()
                .tag("History")
            
            Setting()
                .tag("Setting")
            
            Help()
                .tag("Help")
            
            Notification()
                .tag("Notification")
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HomePage : View {
    var body: some View{
        NavigationView{
            Text ("Home")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Home")
        }
    }
}


struct Setting : View {
    var body: some View{
        NavigationView{
            Text ("Setting")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Setting")
        }
    }
}


struct Help : View {
    var body: some View{
        NavigationView{
            Text ("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}


struct History : View {
    var body: some View{
        NavigationView{
            Text ("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}


struct Notification : View {
    var body: some View{
        NavigationView{
            Text ("Notification")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notification")
        }
    }
}

