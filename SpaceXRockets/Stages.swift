//
//  Stages.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation


struct firstStage: Codable {
    let thrustSeaLevel: thrustSeaLevel
    let thrustVacuum: thrustVacuum
    
    let reusable: Bool
    let engines: Int
    let fuelAmountTons: Double
    let burnTimeSec: Int?
}

struct secondStage: Codable {
    let thrust: thrust
    
    struct payloads: Codable {
        struct compositeFairing: Codable {
            let height: height
            let diameter: diameter
        }
        
        let option1: String
    }
    
    let reusable: Bool
    let engines: Int
    let fuelAmountTons: Double
    let burnTimeSec: Int?
}
