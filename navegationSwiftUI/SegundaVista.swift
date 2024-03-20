//
//  SegundaVista.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct SegundaVista: View {
    var texto : String
    var body: some View {
        Text(texto)
            .navigationTitle("Segunda vista")
        NavigationLink(destination: TercerVista()){
            Text("Ir a tercer vista")
        }
    }
}

