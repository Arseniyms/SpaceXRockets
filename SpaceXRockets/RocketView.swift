//
//  RocketView.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 11.04.2022.
//

import SwiftUI

struct RocketView: View {
    var rocket: Rocket
    
    @State private var measuresAndUnits: [String : units] = [
        measures[0] : .m,
        measures[1] : .m,
        measures[2] : .kg,
        measures[3] : .kg
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack() {
                
                AsyncImage(url: rocket.getImageUrl(), scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                } placeholder: {
                    ProgressView()
                }

                VStack {
                    HStack {
                        Text(rocket.name)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "gearshape")
                    }
                    .padding()
                    .font(.largeTitle)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(measures, id: \.self) { measure in
                                VStack {
                                    if let unit = measuresAndUnits[measure] {
                                        if let value = rocket.getMeasures(for: measure, in: unit) {
                                            Text("\(value.formatted())")
                                                .fontWeight(.bold)
                                        }
                                        Text("\(measure), \(unit.description)")
                                            .opacity(0.7)
                                    }
                                    
                                    
                                    
                                }
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.lightBackground)
                                )
                            }
                        }
                    }
                }
                .background(
                    RoundedCornerShape(radius: 30)
                        .fill(.darkBackground)
                )

                

            }
            .frame(alignment: .center)
//            .ignoresSafeArea()
        }
//        .navigationBarHidden(true)
        .background(.darkBackground)
        .preferredColorScheme(.dark)
    }
}

// struct RocketView_Previews: PreviewProvider {
//    static var previews: some View {
//        RocketView()
//    }
// }
