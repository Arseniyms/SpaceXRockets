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
            ScrollView {
                ZStack(alignment: .bottom) {
                    Image("2")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()

                    VStack {

                        HStack {
                            Text("Falcon Heavy")
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "gearshape")
                        }
                        .padding()
                        .font(.largeTitle)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(1...4, id: \.self) { _ in

                                    VStack {
                                        Text("120")
                                            .fontWeight(.bold)
                                        Text("Высота")
                                            .fontWeight(.thin)
                                            .opacity(0.7)
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(.lightBackground)
                                    )
                                }
                            }
                        }
                        .padding()
                        
                        List(rockets) { rocket in
                            Text(rocket.name)
                        }
                        .task {
                            await getData(from: url)
                        }
                    }
                    .background(
                        RoundedCornerShape(radius: 30)
                            .fill(.darkBackground)
                    )
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Name of rocket") // TODO:
            .navigationBarHidden(true)
            .background(.darkBackground)
            .preferredColorScheme(.dark)
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
