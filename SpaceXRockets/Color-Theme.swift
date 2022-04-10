//
//  Color-Theme.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation
import SwiftUI

func dividedColor(r: Double, g: Double, b: Double) -> Color {
    Color(red: r / 255, green: g / 255, blue: b / 255)
}

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        dividedColor(r: 33, g: 33, b: 33)
    }
    
    static var lightBackground: Color {
        dividedColor(r: 50, g: 50, b: 50)
    }
}
