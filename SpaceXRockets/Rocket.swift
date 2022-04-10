//
//  Rocket.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation

struct Rocket: Codable, Identifiable {
    let height: height
    let diameter: diameter
    let mass: mass
    let firstStage: firstStage
    let secondStage: secondStage
    let engines: engines
    let landingLegs: landingLegs
    let payloadWeights: [payloadWeights]
    let flickrImages: [String]
    
    let name: String
    let type: String
    let active: Bool
    let stages: Int
    let boosters: Int
    let costPerLaunch: Int
    let successRatePct: Int
    let firstFlight: Date
    let country: String
    let company: String
    let wikipedia: String
    let description: String
    let id: String
    
    
}
