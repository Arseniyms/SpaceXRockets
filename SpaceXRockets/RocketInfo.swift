//
//  RocketInfo.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 11.04.2022.
//

import SwiftUI

struct RocketInfo: View {
    var rocket: Rocket
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack {
                    Text("Первый запуск")
                    Spacer()
                    Text(rocket.formattedFirstFlight)
                }
                
                HStack {
                    Text("Страна")
                    Spacer()
                    Text(rocket.country)
                }
                
                HStack {
                    Text("Стоимость запуска")
                    Spacer()
                    Text(rocket.costPerLaunch.formatted(.currency(code: "USD")))
                }
                
            }
        }
        .padding()
        
        
        
    }
}
//
//struct RocketInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        RocketInfo()
//    }
//}
