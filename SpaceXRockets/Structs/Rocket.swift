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
    
    func getImageUrl() -> URL {
        if let url = URL(string: self.flickrImages.randomElement() ?? "Error") {
            return url
        }
        fatalError("Could not load the image")
    }
    
    func getMeasures(for measure: String, in unit: units) -> Double? {
        switch measure {
        case "Высота":
            return height.getHeight(in: unit)
        case "Диаметр":
            return diameter.getDiameter(in: unit)
        case "Масса":
            return mass.getMass(in: unit)
        case "Нагрузка":
            return payloadWeights[0].getPayloadWeight(in: unit)
        default:
            return nil
        }
    }
    
    
}
