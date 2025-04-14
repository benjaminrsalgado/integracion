//
//  ContentView.swift
//  integracion
//
//  Created by Benjamin Rojo on 10/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.red)
            Text("Hello,WWDC!")
            AsyncImage(url: URL(string: "https://www.apple.com/newsroom/images/2025/03/apples-worldwide-developers-conference-returns-the-week-of-june-9/tile/Apple-WWDC24-event-branding-lp.jpg.landing-big_2x.jpg")) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Text("Cargando imagen...")
                    .foregroundColor(.red)
                    .font(.largeTitle)
            }
            .frame(width: 500, height: 200)
            
        }
        .padding()
    }
}

import SwiftUI

struct CoontentView: View {
    @State private var mostrar = false // oculto

    var body: some View {
        AsyncImage(url: URL(string: "https://digitalassets-retail.cdn-apple.com//retail-image-server/a84/fcd/89e/9b7/734/de7/9fc/665/080/7bd/39452745-3f1f-385f-8942-fae06f0f557e_Apple_Park_Visitor_Center_Explore_04_medium_2x.jpg")) { image in
            image
                .resizable()
                .scaledToFit()
                .opacity(mostrar ? 1 : 0) // Si mostrar es true → se ve, si no → invisible
                .onAppear {
                    mostrar = true //Cuando la imagen aparece se cambia a visible
                }
        } placeholder: {
            Text("La magia empieza...")
        }
        .frame(width: 1000, height: 1000)
        .animation(.easeIn(duration: 2), value: mostrar) // se va viendo suavemente
    }
}

#Preview {
    CoontentView()
   
    
}
