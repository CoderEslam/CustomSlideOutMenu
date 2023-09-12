//
//  CustomCorners.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI

struct CustomCorners: Shape {
   
    var corner : UIRectCorner // Ui Rectangle Corner
    var radius :CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
        
    }
    
}


