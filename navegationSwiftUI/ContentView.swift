//
//  ContentView.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: SegundaVista()){
                    Text("Segunda vista")
                }
                Button("Abrir Modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show, content: {
                    VentanaModal()
                })
            }.navigationTitle("Navegación")
                .toolbar{
                    HStack{
                        NavigationLink(destination: SegundaVista()){
                            Image(systemName: "plus")
                        }
                        NavigationLink(destination: TercerVista()){
                            Image(systemName: "camera")
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
