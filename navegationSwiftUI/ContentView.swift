//
//  ContentView.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var texto = ""
    var body: some View {
        NavigationView{
            VStack {
                TextField("Texto", text: $texto)
                NavigationLink(destination: SegundaVista(texto: texto)){
                    Text("Segunda vista")
                }
                Button("Abrir Modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show, content: {
                    VentanaModal(texto: texto)
                })
            }.navigationTitle("Navegación")
                .toolbar{
                    HStack{
                        NavigationLink(destination: SegundaVista(texto: texto)){
                            Image(systemName: "plus")
                        }
                        NavigationLink(destination: TercerVista()){
                            Image(systemName: "camera")
                        }
                    }
                }.padding(.all)
        }
    }
}

#Preview {
    ContentView()
}
