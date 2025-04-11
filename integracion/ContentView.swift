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

struct PruebaView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://images.macrumors.com/article-new/2025/02/WWDC-25-Feature-2.jpg")) { phase in
            switch phase {
            case .empty:
                Text("Cargando imagen...")
                
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                
            case .failure(_):
                Text("❌ Error al cargar la imagen")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
            @unknown default:
                EmptyView()
                
                
            }
            
        }
        
        .frame(width: 600, height: 200)
    }
   
}

#Preview {
    ContentView()
    PruebaView()
}
