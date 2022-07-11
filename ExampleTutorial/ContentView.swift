//
//  ContentView.swift
//  ExampleTutorial
//
//  Created by Ayaworan on 10/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Bosque dos Jequitibás")
                    .font(.title)
                    .foregroundColor(.orange)
                
                HStack {
                    Text("Parque ecológico de campinas")
                        .font(.subheadline)
                    Spacer()
                    Text("Campinas - SP")
                }
                .foregroundColor(.gray)
                Divider()
                Text("Sobre o Bosque dos Jequitibás")
                    .font(.title2)
                Text("Lorem description about this")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
