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
}

struct diameter: Codable {
    let meters: Double?
    let feet: Double?
}

struct mass: Codable {
    let kg: Int
    let lb: Int
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

