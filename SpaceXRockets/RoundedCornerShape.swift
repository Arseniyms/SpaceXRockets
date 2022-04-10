//
//  RoundedCornerShape.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import SwiftUI
import Foundation

struct RoundedCornerShape: Shape {
    let radius: CGFloat;
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to:CGPoint(x: rect.minX, y: rect.minY + radius))
        path.addRelativeArc(center: CGPoint(x: rect.minX + radius, y: rect.minY), radius: radius, startAngle: .degrees(180), delta: .degrees(90))
        path.addLine(to: CGPoint(x: rect.maxX - radius, y: rect.minY - radius))
        path.addRelativeArc(center: CGPoint(x: rect.maxX - radius, y: rect.minY), radius: radius, startAngle: .degrees(-90), delta: .degrees(90))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))

        
        return path
        
    }
}
