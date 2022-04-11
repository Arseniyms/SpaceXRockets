//
//  measures.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation

struct height: Codable {
    let meters: Double?
    let feet: Double?
    
    func getHeight(in unit: units) -> Double? {
        switch unit {
        case .m:
            return meters
        case .ft:
            return feet
        default:
            return nil
        }
    }
}

struct diameter: Codable {
    let meters: Double?
    let feet: Double?
    
    func getDiameter(in unit: units) -> Double? {
        switch unit {
        case .m:
            return meters
        case .ft:
            return feet
        default:
            return nil
        }
    }
}

struct mass: Codable {
    let kg: Int
    let lb: Int
    
    func getMass(in unit: units) -> Double? {
        switch unit {
        case .kg:
            return Double(kg)
        case .lb:
            return Double(lb)
        default:
            return nil
        }
    }
}

struct thrustSeaLevel: Codable {
    let kN: Int
    let lbf: Int
}

struct thrustVacuum: Codable {
    let kN: Int
    let lbf: Int
}

struct thrust: Codable {
    let kN: Int
    let lbf: Int
}

struct isp: Codable {
    let seaLevel: Int
    let vacuum: Int
}

