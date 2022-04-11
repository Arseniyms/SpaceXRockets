//
//  MeasuresAndUnits.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 11.04.2022.
//

import Foundation

let measures = ["Высота", "Диаметр", "Масса", "Нагрузка"]

enum units: String, CustomStringConvertible {
    case m = "m", ft = "ft", kg = "kg", lb = "lb"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
}

