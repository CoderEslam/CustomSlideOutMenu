//
//  TabButton.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI

struct TabButton: View {
    
    var image :String
    var title :String
    
    @Binding var selectedTab :String
    var animation :Namespace.ID
    
    var body: some View {
        
        Button{
            
            withAnimation(.spring()){
                selectedTab = title
            }
            
        }label: {
            HStack{
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color.blue : .white )
            .padding(.vertical,12)
            .padding(.horizontal, 20)
            .background(
                //hero Animation
                ZStack{
                    if selectedTab == title {
                        Color.white.opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corner: [.topRight,.bottomRight], radius: 10))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
                
            )
            
        }
        
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
