//
//  OtherInfo.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import Foundation

struct landingLegs: Codable {
    let number: Int
    let material: String?
}

struct payloadWeights: Codable, Identifiable {
    let id: String
    let name: String
    let kg: Int
    let lb: Int

    func getPayloadWeight(in unit: units) -> Double? {
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
