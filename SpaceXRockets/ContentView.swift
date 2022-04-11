//
//  ContentView.swift
//  SpaceXRockets
//
//  Created by Arseniy Matus on 10.04.2022.
//

import SwiftUI

let url = "https://api.spacexdata.com/v4/rockets"

struct ContentView: View {
    @State private var rockets = [Rocket]()

    let rows = [
        GridItem(.fixed(100)),
    ]

    var body: some View {
        NavigationView {
            VStack {
                if rockets.count > 0 {
                    PageView(pages: rockets.map { rocket in
                        RocketView(rocket: rocket)
                    })
                    .ignoresSafeArea()
                }
            }
//            .navigationBarHidden(true)
            .preferredColorScheme(.dark)
//            .background(.darkBackground)
            .task {
                await getData(from: url)
            }
        }

    }

    func getData(from url: String) async {
        guard let url = URL(string: url) else {
            fatalError("Could not load data from the server")
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let formatter = DateFormatter()
            formatter.dateFormat = "y-MM-DD"

            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(formatter)
            decoder.keyDecodingStrategy = .convertFromSnakeCase

            do {
                rockets = try decoder.decode([Rocket].self, from: data)
            } catch {
                fatalError(error.localizedDescription)
            }
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
