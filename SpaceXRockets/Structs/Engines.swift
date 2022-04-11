//
//  Engines.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation

struct engines: Codable {
    let isp: isp
    let thrustSeaLevel: thrustSeaLevel
    let thrustVacuum: thrustVacuum
    
    let number: Int
    let type: String
    let version: String
    let layout: String?
    let engineLossMax: Int?
    let propellant1: String
    let propellant2: String
    let thrustToWeight: Double
}
